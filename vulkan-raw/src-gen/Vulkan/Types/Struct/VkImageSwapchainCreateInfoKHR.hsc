{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if (VK_KHR_device_group && VK_KHR_swapchain) || (VK_KHR_swapchain)

module Vulkan.Types.Struct.VkImageSwapchainCreateInfoKHR where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Handle



data {-# CTYPE "vulkan/vulkan.h" "VkImageSwapchainCreateInfoKHR" #-} VkImageSwapchainCreateInfoKHR =
       VkImageSwapchainCreateInfoKHR
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , swapchain :: VkSwapchainKHR
         }

instance Storable VkImageSwapchainCreateInfoKHR where
  sizeOf    _ = #{size      VkImageSwapchainCreateInfoKHR}
  alignment _ = #{alignment VkImageSwapchainCreateInfoKHR}

  peek ptr = 
    VkImageSwapchainCreateInfoKHR
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"swapchain" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"swapchain" ptr val

instance Offset "sType" VkImageSwapchainCreateInfoKHR where
  rawOffset = #{offset VkImageSwapchainCreateInfoKHR, sType}

instance Offset "pNext" VkImageSwapchainCreateInfoKHR where
  rawOffset = #{offset VkImageSwapchainCreateInfoKHR, pNext}

instance Offset "swapchain" VkImageSwapchainCreateInfoKHR where
  rawOffset = #{offset VkImageSwapchainCreateInfoKHR, swapchain}

#else

module Vulkan.Types.Struct.VkImageSwapchainCreateInfoKHR where

#endif