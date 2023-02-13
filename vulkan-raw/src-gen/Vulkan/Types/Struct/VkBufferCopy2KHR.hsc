{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_KHR_copy_commands2

module Vulkan.Types.Struct.VkBufferCopy2KHR where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkBufferCopy2KHR" #-} VkBufferCopy2KHR =
       VkBufferCopy2KHR
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , srcOffset :: VkDeviceSize -- ^ Specified in bytes
         , dstOffset :: VkDeviceSize -- ^ Specified in bytes
         , size :: VkDeviceSize -- ^ Specified in bytes
         }

instance Storable VkBufferCopy2KHR where
  sizeOf    _ = #{size      VkBufferCopy2KHR}
  alignment _ = #{alignment VkBufferCopy2KHR}

  peek ptr = 
    VkBufferCopy2KHR
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"srcOffset" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"dstOffset" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"size" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"srcOffset" ptr val
    pokeField @"dstOffset" ptr val
    pokeField @"size" ptr val

instance Offset "sType" VkBufferCopy2KHR where
  rawOffset = #{offset VkBufferCopy2KHR, sType}

instance Offset "pNext" VkBufferCopy2KHR where
  rawOffset = #{offset VkBufferCopy2KHR, pNext}

instance Offset "srcOffset" VkBufferCopy2KHR where
  rawOffset = #{offset VkBufferCopy2KHR, srcOffset}

instance Offset "dstOffset" VkBufferCopy2KHR where
  rawOffset = #{offset VkBufferCopy2KHR, dstOffset}

instance Offset "size" VkBufferCopy2KHR where
  rawOffset = #{offset VkBufferCopy2KHR, size}

#else

module Vulkan.Types.Struct.VkBufferCopy2KHR where

#endif