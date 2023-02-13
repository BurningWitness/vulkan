{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_KHR_swapchain

module Vulkan.Types.Struct.VkPresentInfoKHR where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkResult
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Handle



data {-# CTYPE "vulkan/vulkan.h" "VkPresentInfoKHR" #-} VkPresentInfoKHR =
       VkPresentInfoKHR
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , waitSemaphoreCount :: #{type uint32_t} -- ^ Number of semaphores to wait for before presenting
         , pWaitSemaphores :: Ptr VkSemaphore -- ^ Semaphores to wait for before presenting
         , swapchainCount :: #{type uint32_t} -- ^ Number of swapchains to present in this call
         , pSwapchains :: Ptr VkSwapchainKHR -- ^ Swapchains to present an image from
         , pImageIndices :: Ptr #{type uint32_t} -- ^ Indices of which presentable images to present
         , pResults :: Ptr VkResult -- ^ Optional (i.e. if non-NULL) VkResult for each swapchain
         }

instance Storable VkPresentInfoKHR where
  sizeOf    _ = #{size      VkPresentInfoKHR}
  alignment _ = #{alignment VkPresentInfoKHR}

  peek ptr = 
    VkPresentInfoKHR
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"waitSemaphoreCount" ptr)
       <*> peek (offset @"pWaitSemaphores" ptr)
       <*> peek (offset @"swapchainCount" ptr)
       <*> peek (offset @"pSwapchains" ptr)
       <*> peek (offset @"pImageIndices" ptr)
       <*> peek (offset @"pResults" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"waitSemaphoreCount" ptr val
    pokeField @"pWaitSemaphores" ptr val
    pokeField @"swapchainCount" ptr val
    pokeField @"pSwapchains" ptr val
    pokeField @"pImageIndices" ptr val
    pokeField @"pResults" ptr val

instance Offset "sType" VkPresentInfoKHR where
  rawOffset = #{offset VkPresentInfoKHR, sType}

instance Offset "pNext" VkPresentInfoKHR where
  rawOffset = #{offset VkPresentInfoKHR, pNext}

instance Offset "waitSemaphoreCount" VkPresentInfoKHR where
  rawOffset = #{offset VkPresentInfoKHR, waitSemaphoreCount}

instance Offset "pWaitSemaphores" VkPresentInfoKHR where
  rawOffset = #{offset VkPresentInfoKHR, pWaitSemaphores}

instance Offset "swapchainCount" VkPresentInfoKHR where
  rawOffset = #{offset VkPresentInfoKHR, swapchainCount}

instance Offset "pSwapchains" VkPresentInfoKHR where
  rawOffset = #{offset VkPresentInfoKHR, pSwapchains}

instance Offset "pImageIndices" VkPresentInfoKHR where
  rawOffset = #{offset VkPresentInfoKHR, pImageIndices}

instance Offset "pResults" VkPresentInfoKHR where
  rawOffset = #{offset VkPresentInfoKHR, pResults}

#else

module Vulkan.Types.Struct.VkPresentInfoKHR where

#endif