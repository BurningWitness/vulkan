# vk-mem-alloc

Raw bindings to [Vulkan Memory Allocator](https://github.com/GPUOpen-LibrariesAndSDKs/VulkanMemoryAllocator), specifically version 3.0.1 at commit [c265047b29b03456221992c4204bb5a15fd09494](https://github.com/GPUOpen-LibrariesAndSDKs/VulkanMemoryAllocator/blob/c265047b29b03456221992c4204bb5a15fd09494/include/vk_mem_alloc.h).

Caveats of this library:
- [`vulkan-raw`](/vulkan-raw) core versions 1.0 through 1.3 must be exposed to compile `vk-mem-alloc`.
  This is the default configuration of `vulkan-raw`.

- Unlike `vulkan-raw` the functionality exposed depends on the version of Vulkan SDK
  this is compiled against. If you cannot ensure SDK is at the latest version you'll have to
  add all the flags manually.

- Illegal record field names are replaced with an underscored alternative (e.g. `instance` becomes `instance_`).
  `GHC.Records.HasField` and `Foreign.Storable.Offset.Offset` instances are defined over both variants.

- `DuplicateRecordFields` (since GHC 9.2 also `NoFieldSelectors`) are turned on at all struct definitions.
