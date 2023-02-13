{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Struct.VkBindSparseInfo where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkSparseBufferMemoryBindInfo
import Vulkan.Types.Struct.VkSparseImageMemoryBindInfo
import Vulkan.Types.Struct.VkSparseImageOpaqueMemoryBindInfo



data {-# CTYPE "vulkan/vulkan.h" "VkBindSparseInfo" #-} VkBindSparseInfo =
       VkBindSparseInfo
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , waitSemaphoreCount :: #{type uint32_t}
         , pWaitSemaphores :: Ptr VkSemaphore
         , bufferBindCount :: #{type uint32_t}
         , pBufferBinds :: Ptr VkSparseBufferMemoryBindInfo
         , imageOpaqueBindCount :: #{type uint32_t}
         , pImageOpaqueBinds :: Ptr VkSparseImageOpaqueMemoryBindInfo
         , imageBindCount :: #{type uint32_t}
         , pImageBinds :: Ptr VkSparseImageMemoryBindInfo
         , signalSemaphoreCount :: #{type uint32_t}
         , pSignalSemaphores :: Ptr VkSemaphore
         }

instance Storable VkBindSparseInfo where
  sizeOf    _ = #{size      VkBindSparseInfo}
  alignment _ = #{alignment VkBindSparseInfo}

  peek ptr = 
    VkBindSparseInfo
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"waitSemaphoreCount" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pWaitSemaphores" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"bufferBindCount" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pBufferBinds" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"imageOpaqueBindCount" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pImageOpaqueBinds" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"imageBindCount" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pImageBinds" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"signalSemaphoreCount" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pSignalSemaphores" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"waitSemaphoreCount" ptr val
    pokeField @"pWaitSemaphores" ptr val
    pokeField @"bufferBindCount" ptr val
    pokeField @"pBufferBinds" ptr val
    pokeField @"imageOpaqueBindCount" ptr val
    pokeField @"pImageOpaqueBinds" ptr val
    pokeField @"imageBindCount" ptr val
    pokeField @"pImageBinds" ptr val
    pokeField @"signalSemaphoreCount" ptr val
    pokeField @"pSignalSemaphores" ptr val

instance Offset "sType" VkBindSparseInfo where
  rawOffset = #{offset VkBindSparseInfo, sType}

instance Offset "pNext" VkBindSparseInfo where
  rawOffset = #{offset VkBindSparseInfo, pNext}

instance Offset "waitSemaphoreCount" VkBindSparseInfo where
  rawOffset = #{offset VkBindSparseInfo, waitSemaphoreCount}

instance Offset "pWaitSemaphores" VkBindSparseInfo where
  rawOffset = #{offset VkBindSparseInfo, pWaitSemaphores}

instance Offset "bufferBindCount" VkBindSparseInfo where
  rawOffset = #{offset VkBindSparseInfo, bufferBindCount}

instance Offset "pBufferBinds" VkBindSparseInfo where
  rawOffset = #{offset VkBindSparseInfo, pBufferBinds}

instance Offset "imageOpaqueBindCount" VkBindSparseInfo where
  rawOffset = #{offset VkBindSparseInfo, imageOpaqueBindCount}

instance Offset "pImageOpaqueBinds" VkBindSparseInfo where
  rawOffset = #{offset VkBindSparseInfo, pImageOpaqueBinds}

instance Offset "imageBindCount" VkBindSparseInfo where
  rawOffset = #{offset VkBindSparseInfo, imageBindCount}

instance Offset "pImageBinds" VkBindSparseInfo where
  rawOffset = #{offset VkBindSparseInfo, pImageBinds}

instance Offset "signalSemaphoreCount" VkBindSparseInfo where
  rawOffset = #{offset VkBindSparseInfo, signalSemaphoreCount}

instance Offset "pSignalSemaphores" VkBindSparseInfo where
  rawOffset = #{offset VkBindSparseInfo, pSignalSemaphores}