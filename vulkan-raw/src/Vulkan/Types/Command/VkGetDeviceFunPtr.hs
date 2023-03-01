module Vulkan.Types.Command.VkGetDeviceFunPtr where

import           Vulkan.Types.Command.VkGetDeviceProcAddr
import           Vulkan.Types.Handle
import           Vulkan.Types.VkFun

import           Foreign.Ptr



-- | Type-safe alternative to 'vkGetDeviceProcAddr'
vkGetDeviceFunPtr :: VkDevice -> VkFun a -> IO (FunPtr a)
vkGetDeviceFunPtr inst (VkFun ptr) = castFunPtr <$> vkGetDeviceProcAddr inst (castPtr ptr)

-- | Type-safe alternative to 'vkGetDeviceProcAddrUnsafe'
vkGetDeviceFunPtrUnsafe :: VkDevice -> VkFun a -> IO (FunPtr a)
vkGetDeviceFunPtrUnsafe inst (VkFun ptr) = castFunPtr <$> vkGetDeviceProcAddrUnsafe inst (castPtr ptr)
