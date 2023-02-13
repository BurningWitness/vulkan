{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_KHR_copy_commands2

module Vulkan.Types.Struct.VkBlitImageInfo2KHR where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkFilter
import Vulkan.Types.Enum.VkImageLayout
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkImageBlit2



data {-# CTYPE "vulkan/vulkan.h" "VkBlitImageInfo2KHR" #-} VkBlitImageInfo2KHR =
       VkBlitImageInfo2KHR
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , srcImage :: VkImage
         , srcImageLayout :: VkImageLayout
         , dstImage :: VkImage
         , dstImageLayout :: VkImageLayout
         , regionCount :: #{type uint32_t}
         , pRegions :: Ptr VkImageBlit2
         , filter :: VkFilter
         }

instance Storable VkBlitImageInfo2KHR where
  sizeOf    _ = #{size      VkBlitImageInfo2KHR}
  alignment _ = #{alignment VkBlitImageInfo2KHR}

  peek ptr = 
    VkBlitImageInfo2KHR
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"srcImage" ptr)
       <*> peek (offset @"srcImageLayout" ptr)
       <*> peek (offset @"dstImage" ptr)
       <*> peek (offset @"dstImageLayout" ptr)
       <*> peek (offset @"regionCount" ptr)
       <*> peek (offset @"pRegions" ptr)
       <*> peek (offset @"filter" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"srcImage" ptr val
    pokeField @"srcImageLayout" ptr val
    pokeField @"dstImage" ptr val
    pokeField @"dstImageLayout" ptr val
    pokeField @"regionCount" ptr val
    pokeField @"pRegions" ptr val
    pokeField @"filter" ptr val

instance Offset "sType" VkBlitImageInfo2KHR where
  rawOffset = #{offset VkBlitImageInfo2KHR, sType}

instance Offset "pNext" VkBlitImageInfo2KHR where
  rawOffset = #{offset VkBlitImageInfo2KHR, pNext}

instance Offset "srcImage" VkBlitImageInfo2KHR where
  rawOffset = #{offset VkBlitImageInfo2KHR, srcImage}

instance Offset "srcImageLayout" VkBlitImageInfo2KHR where
  rawOffset = #{offset VkBlitImageInfo2KHR, srcImageLayout}

instance Offset "dstImage" VkBlitImageInfo2KHR where
  rawOffset = #{offset VkBlitImageInfo2KHR, dstImage}

instance Offset "dstImageLayout" VkBlitImageInfo2KHR where
  rawOffset = #{offset VkBlitImageInfo2KHR, dstImageLayout}

instance Offset "regionCount" VkBlitImageInfo2KHR where
  rawOffset = #{offset VkBlitImageInfo2KHR, regionCount}

instance Offset "pRegions" VkBlitImageInfo2KHR where
  rawOffset = #{offset VkBlitImageInfo2KHR, pRegions}

instance Offset "filter" VkBlitImageInfo2KHR where
  rawOffset = #{offset VkBlitImageInfo2KHR, filter}

#else

module Vulkan.Types.Struct.VkBlitImageInfo2KHR where

#endif