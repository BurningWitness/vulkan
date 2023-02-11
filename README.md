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
