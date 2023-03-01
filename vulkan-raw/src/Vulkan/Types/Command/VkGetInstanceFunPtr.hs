module Vulkan.Types.Command.VkGetInstanceFunPtr where

import           Vulkan.Types.Command.VkGetInstanceProcAddr
import           Vulkan.Types.Handle
import           Vulkan.Types.VkFun

import           Foreign.Ptr



-- | Type-safe alternative to 'vkGetInstanceProcAddr'
vkGetInstanceFunPtr :: VkInstance -> VkFun a -> IO (FunPtr a)
vkGetInstanceFunPtr inst (VkFun ptr) = castFunPtr <$> vkGetInstanceProcAddr inst (castPtr ptr)

-- | Type-safe alternative to 'vkGetInstanceProcAddrUnsafe'
vkGetInstanceFunPtrUnsafe :: VkInstance -> VkFun a -> IO (FunPtr a)
vkGetInstanceFunPtrUnsafe inst (VkFun ptr) = castFunPtr <$> vkGetInstanceProcAddrUnsafe inst (castPtr ptr)
