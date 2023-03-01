Third iteration of Haskell bindings to the [Vulkan](https://registry.khronos.org/vulkan/) API,
the previous two being [vulkan](https://hackage.haskell.org/package/vulkan) and
and [vulkan-api](https://hackage.haskell.org/package/vulkan-api) (in that order).

These bindings are as low-level as it can get, meaning:
- Naming is 1:1 to Vulkan, just like in `vulkan-api`;

- Enumerators are expressed as polymorphic patterns,
  just like in [`gl`](https://hackage.haskell.org/package/gl);

- All functions provided by this library are direct FFI calls linked during compilation.
  All extension functions have to be extracted manually.

- All memory allocation is manual.

This repository is split into the following packages:
- [`genvulkan`](/genvulkan): automatic file generation for `vulkan-raw`;

- [`vulkan-raw`](/vulkan-raw): Vulkan bindings;

- [`vk-mem-alloc`](/vk-mem-alloc): [VulkanMemoryAllocator](https://github.com/GPUOpen-LibrariesAndSDKs/VulkanMemoryAllocator) bindings;

- [`vulkan-example`](/vulkan-example): rendering a basic triangle with `vulkan-raw` and `vk-mem-alloc`.

# Notes on building
Two different ways of setting up quickly:
- Get a version from the local repository (if available). This will work as long as all
  of the extensions used are compatible with that version.

- Download SDK from [the official website](https://vulkan.lunarg.com/sdk/home).
  The version should ideally match the `vulkan-raw` XML version specified [here](/vulkan-raw/README.md).
  There may not be a version for more obscure setups (e.g. linux-arm64).

`vulkan-raw` is not considered a valid package under Cabal 3.8 due to overly strict `other-modules` checks.

## Linux
Works out of the box, everything is installed into system paths.

## MacOS
Two options:
- Use `install_vulkan.py` to install everything into system paths;

- Configure `vulkan-raw` to use `$VULKAN_SDK/macOS/include` in `extra-include-dirs`,
  `$VULKAN_SDK/macOS/lib` in `extra-lib-dirs` and make sure `libvulkan.dylib` is visible in PATH.

## Windows
`VulkanRT-...-Installer.exe` can be used to install `vulkan-1.dll` in system path.

`vulkan-raw` requires `%VULKAN_SDK%\Include` provided in `extra-include-dirs` and `%VULKAN_SDK%\Lib` in `extra-lib-dirs`.

NOTE: if using GHC 9.2 or lower,`vk-mem-alloc` requires C++ libraries which will be linked dynamically if provided via
      `extra-libraries: stdc++`. To link statically, supply `ld-options: -Wl,-Bstatic -lstdc++ -Bdynamic` to both
      `vk-mem-alloc` and executables depending on it.

NOTE: `vulkan-raw` fails to build under GHC 9.4.4 due to symbol linking failures. This will hopefully be resolved
      in a later GHC version.
