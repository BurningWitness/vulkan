{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_KHR_copy_commands2

module Vulkan.Types.Struct.VkCopyImageInfo2KHR where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkImageLayout
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkImageCopy2



data {-# CTYPE "vulkan/vulkan.h" "VkCopyImageInfo2KHR" #-} VkCopyImageInfo2KHR =
       VkCopyImageInfo2KHR
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , srcImage :: VkImage
         , srcImageLayout :: VkImageLayout
         , dstImage :: VkImage
         , dstImageLayout :: VkImageLayout
         , regionCount :: #{type uint32_t}
         , pRegions :: Ptr VkImageCopy2
         }

instance Storable VkCopyImageInfo2KHR where
  sizeOf    _ = #{size      VkCopyImageInfo2KHR}
  alignment _ = #{alignment VkCopyImageInfo2KHR}

  peek ptr = 
    VkCopyImageInfo2KHR
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

instance Offset "sType" VkCopyImageInfo2KHR where
  rawOffset = #{offset VkCopyImageInfo2KHR, sType}

instance Offset "pNext" VkCopyImageInfo2KHR where
  rawOffset = #{offset VkCopyImageInfo2KHR, pNext}

instance Offset "srcImage" VkCopyImageInfo2KHR where
  rawOffset = #{offset VkCopyImageInfo2KHR, srcImage}

instance Offset "srcImageLayout" VkCopyImageInfo2KHR where
  rawOffset = #{offset VkCopyImageInfo2KHR, srcImageLayout}

instance Offset "dstImage" VkCopyImageInfo2KHR where
  rawOffset = #{offset VkCopyImageInfo2KHR, dstImage}

instance Offset "dstImageLayout" VkCopyImageInfo2KHR where
  rawOffset = #{offset VkCopyImageInfo2KHR, dstImageLayout}

instance Offset "regionCount" VkCopyImageInfo2KHR where
  rawOffset = #{offset VkCopyImageInfo2KHR, regionCount}

instance Offset "pRegions" VkCopyImageInfo2KHR where
  rawOffset = #{offset VkCopyImageInfo2KHR, pRegions}

#else

module Vulkan.Types.Struct.VkCopyImageInfo2KHR where

#endif