{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if (VK_KHR_device_group && VK_KHR_swapchain) || (VK_KHR_swapchain)

module Vulkan.Types.Struct.VkBindImageMemorySwapchainInfoKHR where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Handle



data {-# CTYPE "vulkan/vulkan.h" "VkBindImageMemorySwapchainInfoKHR" #-} VkBindImageMemorySwapchainInfoKHR =
       VkBindImageMemorySwapchainInfoKHR
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , swapchain :: VkSwapchainKHR
         , imageIndex :: #{type uint32_t}
         }

instance Storable VkBindImageMemorySwapchainInfoKHR where
  sizeOf    _ = #{size      struct VkBindImageMemorySwapchainInfoKHR}
  alignment _ = #{alignment struct VkBindImageMemorySwapchainInfoKHR}

  peek ptr = 
    VkBindImageMemorySwapchainInfoKHR
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"swapchain" ptr)
       <*> peek (offset @"imageIndex" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"swapchain" ptr val
    pokeField @"imageIndex" ptr val

instance Offset "sType" VkBindImageMemorySwapchainInfoKHR where
  rawOffset = #{offset struct VkBindImageMemorySwapchainInfoKHR, sType}

instance Offset "pNext" VkBindImageMemorySwapchainInfoKHR where
  rawOffset = #{offset struct VkBindImageMemorySwapchainInfoKHR, pNext}

instance Offset "swapchain" VkBindImageMemorySwapchainInfoKHR where
  rawOffset = #{offset struct VkBindImageMemorySwapchainInfoKHR, swapchain}

instance Offset "imageIndex" VkBindImageMemorySwapchainInfoKHR where
  rawOffset = #{offset struct VkBindImageMemorySwapchainInfoKHR, imageIndex}

#else

module Vulkan.Types.Struct.VkBindImageMemorySwapchainInfoKHR where

#endif