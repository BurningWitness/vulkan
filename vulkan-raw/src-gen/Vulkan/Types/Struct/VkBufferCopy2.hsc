{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_VERSION_1_3

module Vulkan.Types.Struct.VkBufferCopy2 where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkBufferCopy2" #-} VkBufferCopy2 =
       VkBufferCopy2
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , srcOffset :: VkDeviceSize -- ^ Specified in bytes
         , dstOffset :: VkDeviceSize -- ^ Specified in bytes
         , size :: VkDeviceSize -- ^ Specified in bytes
         }

instance Storable VkBufferCopy2 where
  sizeOf    _ = #{size      VkBufferCopy2}
  alignment _ = #{alignment VkBufferCopy2}

  peek ptr = 
    VkBufferCopy2
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

instance Offset "sType" VkBufferCopy2 where
  rawOffset = #{offset VkBufferCopy2, sType}

instance Offset "pNext" VkBufferCopy2 where
  rawOffset = #{offset VkBufferCopy2, pNext}

instance Offset "srcOffset" VkBufferCopy2 where
  rawOffset = #{offset VkBufferCopy2, srcOffset}

instance Offset "dstOffset" VkBufferCopy2 where
  rawOffset = #{offset VkBufferCopy2, dstOffset}

instance Offset "size" VkBufferCopy2 where
  rawOffset = #{offset VkBufferCopy2, size}

#else

module Vulkan.Types.Struct.VkBufferCopy2 where

#endif