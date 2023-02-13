{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if (VK_KHR_device_group && VK_KHR_swapchain) || (VK_KHR_swapchain)

module Vulkan.Types.Struct.VkAcquireNextImageInfoKHR where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Handle



data {-# CTYPE "vulkan/vulkan.h" "VkAcquireNextImageInfoKHR" #-} VkAcquireNextImageInfoKHR =
       VkAcquireNextImageInfoKHR
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , swapchain :: VkSwapchainKHR
         , timeout :: #{type uint64_t}
         , semaphore :: VkSemaphore
         , fence :: VkFence
         , deviceMask :: #{type uint32_t}
         }

instance Storable VkAcquireNextImageInfoKHR where
  sizeOf    _ = #{size      VkAcquireNextImageInfoKHR}
  alignment _ = #{alignment VkAcquireNextImageInfoKHR}

  peek ptr = 
    VkAcquireNextImageInfoKHR
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"swapchain" ptr)
       <*> peek (offset @"timeout" ptr)
       <*> peek (offset @"semaphore" ptr)
       <*> peek (offset @"fence" ptr)
       <*> peek (offset @"deviceMask" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"swapchain" ptr val
    pokeField @"timeout" ptr val
    pokeField @"semaphore" ptr val
    pokeField @"fence" ptr val
    pokeField @"deviceMask" ptr val

instance Offset "sType" VkAcquireNextImageInfoKHR where
  rawOffset = #{offset VkAcquireNextImageInfoKHR, sType}

instance Offset "pNext" VkAcquireNextImageInfoKHR where
  rawOffset = #{offset VkAcquireNextImageInfoKHR, pNext}

instance Offset "swapchain" VkAcquireNextImageInfoKHR where
  rawOffset = #{offset VkAcquireNextImageInfoKHR, swapchain}

instance Offset "timeout" VkAcquireNextImageInfoKHR where
  rawOffset = #{offset VkAcquireNextImageInfoKHR, timeout}

instance Offset "semaphore" VkAcquireNextImageInfoKHR where
  rawOffset = #{offset VkAcquireNextImageInfoKHR, semaphore}

instance Offset "fence" VkAcquireNextImageInfoKHR where
  rawOffset = #{offset VkAcquireNextImageInfoKHR, fence}

instance Offset "deviceMask" VkAcquireNextImageInfoKHR where
  rawOffset = #{offset VkAcquireNextImageInfoKHR, deviceMask}

#else

module Vulkan.Types.Struct.VkAcquireNextImageInfoKHR where

#endif