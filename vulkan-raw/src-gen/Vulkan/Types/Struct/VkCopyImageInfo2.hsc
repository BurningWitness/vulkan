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

module Vulkan.Types.Struct.VkCopyImageInfo2 where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkImageLayout
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkImageCopy2



data {-# CTYPE "vulkan/vulkan.h" "VkCopyImageInfo2" #-} VkCopyImageInfo2 =
       VkCopyImageInfo2
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , srcImage :: VkImage
         , srcImageLayout :: VkImageLayout
         , dstImage :: VkImage
         , dstImageLayout :: VkImageLayout
         , regionCount :: #{type uint32_t}
         , pRegions :: Ptr VkImageCopy2
         }

instance Storable VkCopyImageInfo2 where
  sizeOf    _ = #{size      VkCopyImageInfo2}
  alignment _ = #{alignment VkCopyImageInfo2}

  peek ptr = 
    VkCopyImageInfo2
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"srcImage" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"srcImageLayout" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"dstImage" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"dstImageLayout" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"regionCount" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pRegions" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"srcImage" ptr val
    pokeField @"srcImageLayout" ptr val
    pokeField @"dstImage" ptr val
    pokeField @"dstImageLayout" ptr val
    pokeField @"regionCount" ptr val
    pokeField @"pRegions" ptr val

instance Offset "sType" VkCopyImageInfo2 where
  rawOffset = #{offset VkCopyImageInfo2, sType}

instance Offset "pNext" VkCopyImageInfo2 where
  rawOffset = #{offset VkCopyImageInfo2, pNext}

instance Offset "srcImage" VkCopyImageInfo2 where
  rawOffset = #{offset VkCopyImageInfo2, srcImage}

instance Offset "srcImageLayout" VkCopyImageInfo2 where
  rawOffset = #{offset VkCopyImageInfo2, srcImageLayout}

instance Offset "dstImage" VkCopyImageInfo2 where
  rawOffset = #{offset VkCopyImageInfo2, dstImage}

instance Offset "dstImageLayout" VkCopyImageInfo2 where
  rawOffset = #{offset VkCopyImageInfo2, dstImageLayout}

instance Offset "regionCount" VkCopyImageInfo2 where
  rawOffset = #{offset VkCopyImageInfo2, regionCount}

instance Offset "pRegions" VkCopyImageInfo2 where
  rawOffset = #{offset VkCopyImageInfo2, pRegions}

#else

module Vulkan.Types.Struct.VkCopyImageInfo2 where

#endif