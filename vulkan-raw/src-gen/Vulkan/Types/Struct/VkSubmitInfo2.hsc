{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_VERSION_1_3

module Vulkan.Types.Struct.VkSubmitInfo2 where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Enum.VkSubmitFlags
import Vulkan.Types.Struct.VkCommandBufferSubmitInfo
import Vulkan.Types.Struct.VkSemaphoreSubmitInfo



data {-# CTYPE "vulkan/vulkan.h" "VkSubmitInfo2" #-} VkSubmitInfo2 =
       VkSubmitInfo2
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

instance Storable VkSubmitInfo2 where
  sizeOf    _ = #{size      VkSubmitInfo2}
  alignment _ = #{alignment VkSubmitInfo2}

  peek ptr = 
    VkSubmitInfo2
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"flags" ptr)
       <*> peek (offset @"waitSemaphoreInfoCount" ptr)
       <*> peek (offset @"pWaitSemaphoreInfos" ptr)
       <*> peek (offset @"commandBufferInfoCount" ptr)
       <*> peek (offset @"pCommandBufferInfos" ptr)
       <*> peek (offset @"signalSemaphoreInfoCount" ptr)
       <*> peek (offset @"pSignalSemaphoreInfos" ptr)

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

instance Offset "sType" VkSubmitInfo2 where
  rawOffset = #{offset VkSubmitInfo2, sType}

instance Offset "pNext" VkSubmitInfo2 where
  rawOffset = #{offset VkSubmitInfo2, pNext}

instance Offset "flags" VkSubmitInfo2 where
  rawOffset = #{offset VkSubmitInfo2, flags}

instance Offset "waitSemaphoreInfoCount" VkSubmitInfo2 where
  rawOffset = #{offset VkSubmitInfo2, waitSemaphoreInfoCount}

instance Offset "pWaitSemaphoreInfos" VkSubmitInfo2 where
  rawOffset = #{offset VkSubmitInfo2, pWaitSemaphoreInfos}

instance Offset "commandBufferInfoCount" VkSubmitInfo2 where
  rawOffset = #{offset VkSubmitInfo2, commandBufferInfoCount}

instance Offset "pCommandBufferInfos" VkSubmitInfo2 where
  rawOffset = #{offset VkSubmitInfo2, pCommandBufferInfos}

instance Offset "signalSemaphoreInfoCount" VkSubmitInfo2 where
  rawOffset = #{offset VkSubmitInfo2, signalSemaphoreInfoCount}

instance Offset "pSignalSemaphoreInfos" VkSubmitInfo2 where
  rawOffset = #{offset VkSubmitInfo2, pSignalSemaphoreInfos}

#else

module Vulkan.Types.Struct.VkSubmitInfo2 where

#endif