# genvulkan

Vulkan API generator for [vulkan-raw](/vulkan-raw).

Relies on the official Vulkan XML for generation, currently found
[here](https://github.com/KhronosGroup/Vulkan-Docs/blob/main/xml/vk.xml).

Invoked as `genvulkan FILE` where `FILE` is the local path to Vulkan XML.

## Internal structure

The XML is structured rather atrociously, requiring both manual C parsing and
massive traversals to ensure references are linked properly across the repository
(e.g. each extension may have a `platform` field and every element featured
solely within such an extension is not defined unless the flag for that
specific platform has been set during compilation).

The generator has five stages, each feeding directly into the next one:
- HaXML is used to read the raw XML document;

- `Parser` converts the raw XML into a data structure described in
   [registry.rnc](https://github.com/KhronosGroup/Vulkan-Docs/blob/main/xml/registry.rnc);

- `Distillery` converts parsed structure into proper Haskell data,
  removing all the C code mixing. The resulting data structure is Vulkan
  data in a nice pattern-matchable format.

- `Mixer` recombines distilled parts into their logical Haskell equivalents.
  Every enumeration/struct/command/etc. is tracked across every feature and extension
  and these mentions are used to spread out definitions accordingly.

- `Packager` converts mixed modules into raw Haskell files.
   `Cabal` converts [vulkan-raw.template](/genvulkan/vulkan-raw.template)
   into [vulkan-raw.cabal](/vulkan-raw/vulkan-raw-cabal).

This structure appears to be mostly correct and allows additions with relative ease,
though this current version could use a bit of cleanup.

Most new additions should require extensions either to `Distillery` or to
the `Mixer` in respective categories.

`Augments` in [Autogen](/genvulkan/src/Autogen.hs) allow removing struct fields through
`cauterizedStructs` and omitting generating function imports via `demotedCommands`.
