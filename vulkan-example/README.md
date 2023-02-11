# vulkan-example

An example triangle rendering program based on [Vulkan Tutorial](https://vulkan-tutorial.com).

The executable renders a single three-color triangle that looks roughly like the
[image](https://vulkan-tutorial.com/images/triangle.png) provided in the tutorial.
Q key or any program termination signal exits the program.

GLFW is used to create a window in a platform-independent fashion.

The code closely follows the tutorial from the Introduction up until and including
[Vertex buffer creation](https://vulkan-tutorial.com/Vertex_buffers/Vertex_buffer_creation),
however there are a few deviations:
- `VK_PRESENT_MODE_FIFO_KHR` is used instead of `VK_PRESENT_MODE_MAILBOX_KHR`;

- Precompiled shaders are baked directly into the code;

- `vkWaitFences` resides at the end of the drawing loop instead of at its start;

- [VulkanMemoryAllocator](/vk-mem-alloc) is used to allocate the vertex buffer.

This application overrelies on throwing exceptions via `fail` for error handling,
this is an intentional choice in the name of code brevity.
