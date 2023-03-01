# vulkan-raw

Raw static Haskell bindings to the [Vulkan](https://registry.khronos.org/vulkan) API,
generated using the official XML for version 1.3.239
([permalink](https://github.com/KhronosGroup/Vulkan-Docs/blob/4941f94e8e36e99e6e1fe430c9e2569dfb6c1937/xml/vk.xml)).

This package reexports the
[Foreign.Storable.Offset](https://hackage.haskell.org/package/storable-offset-0.1.0.0/docs/Foreign-Storable-Offset.html)
module and implements the `Offset` instance for most of the datatypes.
Alas Hackage currently does not show this (as per [haddock#563](https://github.com/haskell/haddock/issues/563)).

Caveats of this library:

- Extensions have to be exposed through Cabal flags. The reason this approach was chosen is because
  [API compatibility between versions is explicitly not guaranteed](https://github.com/KhronosGroup/Vulkan-Docs/issues/580#issuecomment-334950292), so this widens the window of acceptable API versions by a ton. Also
  reduces build times by a ton.

- Functions are exposed in two distinct ways:

    - Every function name is exposed through a `vkFun*` definition and can be looked up in a
      type safe manner using `vkGetInstanceFunPtr`/`vkGetDeviceFunPtr` (these are type
      coerced synonyms to `vkGetInstanceProcAddr`/`vkGetDeviceProcAddr`).

    - Additionally core functions are imported using the FFI. Core 1.0 is always imported,
      imports for core 1.1/1.2/1.3 can be enabled by toggling flags
      `ffi-core-1-1`/`ffi-core-1-2`/`ffi-core-1-3` respectively.

- Not all functions can be marshalled out of the box.
  If you wish to use these you will have to create C wrappers yourself.

  Currently `vkCmdSetBlendConstants` is the only such function in core, it's excluded from import generation.

- Illegal record field names are replaced with an underscored alternative (e.g. `type` becomes `type_`).
  `GHC.Records.HasField` and `Foreign.Storable.Offset.Offset` instances are defined over both variants.

- C structs and unions are represented as Haskell structs with `Offset` and `Storable` instances.
  `Storable`'s `peek` and `poke` methods should not be trusted to produce proper C structs:
  this will work in most cases, however for unions/inlined arrays/bitfield structs they won't.
  Consider using `poke . offset` instead of `poke` over a struct and rely on API documentation
  directly to avoid confusion.

- `DuplicateRecordFields` (since GHC 9.2 also `NoFieldSelectors`) are turned on at all struct definitions.

- Some structs involve bitfields which are currently impossible to marshal. To use these you will have to
  create C wrappers. Currently the only places mentioning these are:

    - Nvidia's ray tracing extensions. `VkAccelerationStructureInstanceKHR`,
      `VkAccelerationStructureSRTMotionInstanceNV` and `VkAccelerationStructureMatrixMotionInstanceNV`
      are thus exported without fields or respective `Offset` instances;

    - H.264/H.265 encoding/decoding extensions. These rely on a slew of structs defined within `vk_video`
      which is not a part of this repository. The type definitions for all of these structs
      (not just featuring bitfields) are stubs.
