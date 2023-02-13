{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Struct.VkSubmitInfo where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkPipelineStageFlags
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Handle



data {-# CTYPE "vulkan/vulkan.h" "VkSubmitInfo" #-} VkSubmitInfo =
       VkSubmitInfo
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , waitSemaphoreCount :: #{type uint32_t}
         , pWaitSemaphores :: Ptr VkSemaphore
         , pWaitDstStageMask :: Ptr VkPipelineStageFlags
         , commandBufferCount :: #{type uint32_t}
         , pCommandBuffers :: Ptr VkCommandBuffer
         , signalSemaphoreCount :: #{type uint32_t}
         , pSignalSemaphores :: Ptr VkSemaphore
         }

instance Storable VkSubmitInfo where
  sizeOf    _ = #{size      VkSubmitInfo}
  alignment _ = #{alignment VkSubmitInfo}

  peek ptr = 
    VkSubmitInfo
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"waitSemaphoreCount" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pWaitSemaphores" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pWaitDstStageMask" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"commandBufferCount" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pCommandBuffers" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"signalSemaphoreCount" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pSignalSemaphores" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"waitSemaphoreCount" ptr val
    pokeField @"pWaitSemaphores" ptr val
    pokeField @"pWaitDstStageMask" ptr val
    pokeField @"commandBufferCount" ptr val
    pokeField @"pCommandBuffers" ptr val
    pokeField @"signalSemaphoreCount" ptr val
    pokeField @"pSignalSemaphores" ptr val

instance Offset "sType" VkSubmitInfo where
  rawOffset = #{offset VkSubmitInfo, sType}

instance Offset "pNext" VkSubmitInfo where
  rawOffset = #{offset VkSubmitInfo, pNext}

instance Offset "waitSemaphoreCount" VkSubmitInfo where
  rawOffset = #{offset VkSubmitInfo, waitSemaphoreCount}

instance Offset "pWaitSemaphores" VkSubmitInfo where
  rawOffset = #{offset VkSubmitInfo, pWaitSemaphores}

instance Offset "pWaitDstStageMask" VkSubmitInfo where
  rawOffset = #{offset VkSubmitInfo, pWaitDstStageMask}

instance Offset "commandBufferCount" VkSubmitInfo where
  rawOffset = #{offset VkSubmitInfo, commandBufferCount}

instance Offset "pCommandBuffers" VkSubmitInfo where
  rawOffset = #{offset VkSubmitInfo, pCommandBuffers}

instance Offset "signalSemaphoreCount" VkSubmitInfo where
  rawOffset = #{offset VkSubmitInfo, signalSemaphoreCount}

instance Offset "pSignalSemaphores" VkSubmitInfo where
  rawOffset = #{offset VkSubmitInfo, pSignalSemaphores}