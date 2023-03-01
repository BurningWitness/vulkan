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

module Vulkan.Types.Struct.VkCopyImageToBufferInfo2 where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkImageLayout
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkBufferImageCopy2



data {-# CTYPE "vulkan/vulkan.h" "VkCopyImageToBufferInfo2" #-} VkCopyImageToBufferInfo2 =
       VkCopyImageToBufferInfo2
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , srcImage :: VkImage
         , srcImageLayout :: VkImageLayout
         , dstBuffer :: VkBuffer
         , regionCount :: #{type uint32_t}
         , pRegions :: Ptr VkBufferImageCopy2
         }

instance Storable VkCopyImageToBufferInfo2 where
  sizeOf    _ = #{size      VkCopyImageToBufferInfo2}
  alignment _ = #{alignment VkCopyImageToBufferInfo2}

  peek ptr = 
    VkCopyImageToBufferInfo2
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"srcImage" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"srcImageLayout" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"dstBuffer" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"regionCount" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pRegions" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"srcImage" ptr val
    pokeField @"srcImageLayout" ptr val
    pokeField @"dstBuffer" ptr val
    pokeField @"regionCount" ptr val
    pokeField @"pRegions" ptr val

instance Offset "sType" VkCopyImageToBufferInfo2 where
  rawOffset = #{offset VkCopyImageToBufferInfo2, sType}

instance Offset "pNext" VkCopyImageToBufferInfo2 where
  rawOffset = #{offset VkCopyImageToBufferInfo2, pNext}

instance Offset "srcImage" VkCopyImageToBufferInfo2 where
  rawOffset = #{offset VkCopyImageToBufferInfo2, srcImage}

instance Offset "srcImageLayout" VkCopyImageToBufferInfo2 where
  rawOffset = #{offset VkCopyImageToBufferInfo2, srcImageLayout}

instance Offset "dstBuffer" VkCopyImageToBufferInfo2 where
  rawOffset = #{offset VkCopyImageToBufferInfo2, dstBuffer}

instance Offset "regionCount" VkCopyImageToBufferInfo2 where
  rawOffset = #{offset VkCopyImageToBufferInfo2, regionCount}

instance Offset "pRegions" VkCopyImageToBufferInfo2 where
  rawOffset = #{offset VkCopyImageToBufferInfo2, pRegions}

#else

module Vulkan.Types.Struct.VkCopyImageToBufferInfo2 where

#endif