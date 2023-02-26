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
SDK download links can be found at [the official website](https://vulkan.lunarg.com/sdk/home).

`vulkan-raw` is not considered a valid package under Cabal 3.8 due to overly strict `other-modules` checks.

## Linux
`libvulkan-dev` works under Ubuntu 22, no other changes required.

## MacOS
`install_vulkan.py` can be used to install `libvulkan.dylib` in system path.

`vulkan-raw` and `vk-mem-alloc` require `$VULKAN_SDK/macOS/include` provided in `extra-include-dirs`.
`vulkan-raw` additionally requires `$VULKAN_SDK/macOS/lib` provided in `extra-lib-dirs`.

## Windows
`VulkanRT-...-Installer.exe` can be used to install `vulkan-1.dll` in system path.

`vulkan-raw` and `vk-mem-alloc` require `%VULKAN_SDK%\Include` provided in `extra-include-dirs`.
`vulkan-raw` additionally requires `%VULKAN_SDK%\Lib` provided in `extra-lib-dirs`.

`vk-mem-alloc` requires C++ libraries, which require non-trivial setup if building under GHC 9.2 or lower.
From GHC 9.4 and onward a phantom `system-cxx-std-lib` library automatically provides this.

Building under Cabal 3.6.2.0 and GHC 9.4.4 fails due to GLFW and Vulkan linking errors, more specifically:
```
ld.lld: error: undefined symbol: bindingszmGLFWzm3zi3zi2zi0zmd278d42650e056a79ffbc43f79c052ef4eb18b50_BindingsziGLFW_zdtcCzqGLFWwindow_closure
>>> referenced by libHSvulkan-example-0.1.0.0-4106123f78bec2fb19ff5f505c7e41cf0ed5a173.a(Example.o):(vulkanzmexamplezm0zi1zi0zi0zm4106123f78bec2fb19ff5f505c7e41cf0ed5a173_Example_zdtrModule_c
losure)

ld.lld: error: undefined symbol: ghczuwrapperZC1ZCvulkanzmrawzm0zi1zi0zi0zm79d33b020302cfa5220c31d65c915034cd45ed44ZCVulkanziTypesziCommandziVkCreateFenceZCvkCreateFence
>>> referenced by libHSvulkan-example-0.1.0.0-4106123f78bec2fb19ff5f505c7e41cf0ed5a173.a(Example.o):(vulkanzmexamplezm0zi1zi0zi0zm4106123f78bec2fb19ff5f505c7e41cf0ed5a173_Example_zdmVKzuLAYER
zuKHRONOSzuvalidation_info)

ld.lld: error: undefined symbol: ghczuwrapperZC1ZCvulkanzmrawzm0zi1zi0zi0zm79d33b020302cfa5220c31d65c915034cd45ed44ZCVulkanziTypesziCommandziVkCreateSemaphoreZCvkCreateSemaphore
>>> referenced by libHSvulkan-example-0.1.0.0-4106123f78bec2fb19ff5f505c7e41cf0ed5a173.a(Example.o):(vulkanzmexamplezm0zi1zi0zi0zm4106123f78bec2fb19ff5f505c7e41cf0ed5a173_Example_zdmVKzuLAYER
zuKHRONOSzuvalidation_info)

(and so on with other Vulkan function names)
```

This is unresolved and hopefully fixes itself with an update (Cabal 3.10 and GHC 9.6), otherwise
someone competent in building under Windows is needed to provide insight.
