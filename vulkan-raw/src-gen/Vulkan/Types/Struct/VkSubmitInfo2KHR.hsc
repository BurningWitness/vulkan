{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_KHR_synchronization2

module Vulkan.Types.Struct.VkSubmitInfo2KHR where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Enum.VkSubmitFlags
import Vulkan.Types.Struct.VkCommandBufferSubmitInfo
import Vulkan.Types.Struct.VkSemaphoreSubmitInfo



data {-# CTYPE "vulkan/vulkan.h" "VkSubmitInfo2KHR" #-} VkSubmitInfo2KHR =
       VkSubmitInfo2KHR
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , flags :: VkSubmitFlags
         , waitSemaphoreInfoCount :: #{type uint32_t}
         , pWaitSemaphoreInfos :: Ptr VkSemaphoreSubmitInfo
         , commandBufferInfoCount :: #{type uint32_t}
         , pCommandBufferInfos :: Ptr VkCommandBufferSubmitInfo
         , signalSemaphoreInfoCount :: #{type uint32_t}
         , pSignalSemaphoreInfos :: Ptr VkSemaphoreSubmitInfo
         }

instance Storable VkSubmitInfo2KHR where
  sizeOf    _ = #{size      VkSubmitInfo2KHR}
  alignment _ = #{alignment VkSubmitInfo2KHR}

  peek ptr = 
    VkSubmitInfo2KHR
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"flags" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"waitSemaphoreInfoCount" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pWaitSemaphoreInfos" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"commandBufferInfoCount" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pCommandBufferInfos" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"signalSemaphoreInfoCount" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pSignalSemaphoreInfos" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"flags" ptr val
    pokeField @"waitSemaphoreInfoCount" ptr val
    pokeField @"pWaitSemaphoreInfos" ptr val
    pokeField @"commandBufferInfoCount" ptr val
    pokeField @"pCommandBufferInfos" ptr val
    pokeField @"signalSemaphoreInfoCount" ptr val
    pokeField @"pSignalSemaphoreInfos" ptr val

instance Offset "sType" VkSubmitInfo2KHR where
  rawOffset = #{offset VkSubmitInfo2KHR, sType}

instance Offset "pNext" VkSubmitInfo2KHR where
  rawOffset = #{offset VkSubmitInfo2KHR, pNext}

instance Offset "flags" VkSubmitInfo2KHR where
  rawOffset = #{offset VkSubmitInfo2KHR, flags}

instance Offset "waitSemaphoreInfoCount" VkSubmitInfo2KHR where
  rawOffset = #{offset VkSubmitInfo2KHR, waitSemaphoreInfoCount}

instance Offset "pWaitSemaphoreInfos" VkSubmitInfo2KHR where
  rawOffset = #{offset VkSubmitInfo2KHR, pWaitSemaphoreInfos}

instance Offset "commandBufferInfoCount" VkSubmitInfo2KHR where
  rawOffset = #{offset VkSubmitInfo2KHR, commandBufferInfoCount}

instance Offset "pCommandBufferInfos" VkSubmitInfo2KHR where
  rawOffset = #{offset VkSubmitInfo2KHR, pCommandBufferInfos}

instance Offset "signalSemaphoreInfoCount" VkSubmitInfo2KHR where
  rawOffset = #{offset VkSubmitInfo2KHR, signalSemaphoreInfoCount}

instance Offset "pSignalSemaphoreInfos" VkSubmitInfo2KHR where
  rawOffset = #{offset VkSubmitInfo2KHR, pSignalSemaphoreInfos}

#else

module Vulkan.Types.Struct.VkSubmitInfo2KHR where

#endif