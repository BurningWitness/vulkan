#include <vulkan/vulkan.h>

module Tiny where



type VkGetInstanceProcAddr =
          VkInstance -- ^ instance
       -> Ptr #{type char} -- ^ pName
       -> IO (FunPtr PFN_vkVoidFunction)

vkFunGetInstanceProcAddr :: VkFun VkGetInstanceProcAddr
vkFunGetInstanceProcAddr = VkFun (Ptr ("vkGetInstanceProcAddr\0"##))

foreign import CALLCV "vulkan/vulkan.h vkGetInstanceProcAddr"
  vkGetInstanceProcAddr
    :: VkGetInstanceProcAddr

foreign import CALLCV "vulkan/vulkan.h vkGetInstanceProcAddr"
  vkGetInstanceProcAddrUnsafe
    :: VkGetInstanceProcAddr
