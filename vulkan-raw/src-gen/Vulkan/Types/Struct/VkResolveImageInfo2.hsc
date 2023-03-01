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

module Vulkan.Types.Struct.VkResolveImageInfo2 where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkImageLayout
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkImageResolve2



data {-# CTYPE "vulkan/vulkan.h" "VkResolveImageInfo2" #-} VkResolveImageInfo2 =
       VkResolveImageInfo2
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , srcImage :: VkImage
         , srcImageLayout :: VkImageLayout
         , dstImage :: VkImage
         , dstImageLayout :: VkImageLayout
         , regionCount :: #{type uint32_t}
         , pRegions :: Ptr VkImageResolve2
         }

instance Storable VkResolveImageInfo2 where
  sizeOf    _ = #{size      VkResolveImageInfo2}
  alignment _ = #{alignment VkResolveImageInfo2}

  peek ptr = 
    VkResolveImageInfo2
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

instance Offset "sType" VkResolveImageInfo2 where
  rawOffset = #{offset VkResolveImageInfo2, sType}

instance Offset "pNext" VkResolveImageInfo2 where
  rawOffset = #{offset VkResolveImageInfo2, pNext}

instance Offset "srcImage" VkResolveImageInfo2 where
  rawOffset = #{offset VkResolveImageInfo2, srcImage}

instance Offset "srcImageLayout" VkResolveImageInfo2 where
  rawOffset = #{offset VkResolveImageInfo2, srcImageLayout}

instance Offset "dstImage" VkResolveImageInfo2 where
  rawOffset = #{offset VkResolveImageInfo2, dstImage}

instance Offset "dstImageLayout" VkResolveImageInfo2 where
  rawOffset = #{offset VkResolveImageInfo2, dstImageLayout}

instance Offset "regionCount" VkResolveImageInfo2 where
  rawOffset = #{offset VkResolveImageInfo2, regionCount}

instance Offset "pRegions" VkResolveImageInfo2 where
  rawOffset = #{offset VkResolveImageInfo2, pRegions}

#else

module Vulkan.Types.Struct.VkResolveImageInfo2 where

#endif