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

module Vulkan.Types.Struct.VkCopyBufferToImageInfo2 where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkImageLayout
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkBufferImageCopy2



data {-# CTYPE "vulkan/vulkan.h" "VkCopyBufferToImageInfo2" #-} VkCopyBufferToImageInfo2 =
       VkCopyBufferToImageInfo2
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , srcBuffer :: VkBuffer
         , dstImage :: VkImage
         , dstImageLayout :: VkImageLayout
         , regionCount :: #{type uint32_t}
         , pRegions :: Ptr VkBufferImageCopy2
         }

instance Storable VkCopyBufferToImageInfo2 where
  sizeOf    _ = #{size      VkCopyBufferToImageInfo2}
  alignment _ = #{alignment VkCopyBufferToImageInfo2}

  peek ptr = 
    VkCopyBufferToImageInfo2
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"srcBuffer" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"dstImage" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"dstImageLayout" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"regionCount" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pRegions" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"srcBuffer" ptr val
    pokeField @"dstImage" ptr val
    pokeField @"dstImageLayout" ptr val
    pokeField @"regionCount" ptr val
    pokeField @"pRegions" ptr val

instance Offset "sType" VkCopyBufferToImageInfo2 where
  rawOffset = #{offset VkCopyBufferToImageInfo2, sType}

instance Offset "pNext" VkCopyBufferToImageInfo2 where
  rawOffset = #{offset VkCopyBufferToImageInfo2, pNext}

instance Offset "srcBuffer" VkCopyBufferToImageInfo2 where
  rawOffset = #{offset VkCopyBufferToImageInfo2, srcBuffer}

instance Offset "dstImage" VkCopyBufferToImageInfo2 where
  rawOffset = #{offset VkCopyBufferToImageInfo2, dstImage}

instance Offset "dstImageLayout" VkCopyBufferToImageInfo2 where
  rawOffset = #{offset VkCopyBufferToImageInfo2, dstImageLayout}

instance Offset "regionCount" VkCopyBufferToImageInfo2 where
  rawOffset = #{offset VkCopyBufferToImageInfo2, regionCount}

instance Offset "pRegions" VkCopyBufferToImageInfo2 where
  rawOffset = #{offset VkCopyBufferToImageInfo2, pRegions}

#else

module Vulkan.Types.Struct.VkCopyBufferToImageInfo2 where

#endif