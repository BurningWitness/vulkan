{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_KHR_copy_commands2

module Vulkan.Types.Struct.VkResolveImageInfo2KHR where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkImageLayout
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkImageResolve2



data {-# CTYPE "vulkan/vulkan.h" "VkResolveImageInfo2KHR" #-} VkResolveImageInfo2KHR =
       VkResolveImageInfo2KHR
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , srcImage :: VkImage
         , srcImageLayout :: VkImageLayout
         , dstImage :: VkImage
         , dstImageLayout :: VkImageLayout
         , regionCount :: #{type uint32_t}
         , pRegions :: Ptr VkImageResolve2
         }

instance Storable VkResolveImageInfo2KHR where
  sizeOf    _ = #{size      VkResolveImageInfo2KHR}
  alignment _ = #{alignment VkResolveImageInfo2KHR}

  peek ptr = 
    VkResolveImageInfo2KHR
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"srcImage" ptr)
       <*> peek (offset @"srcImageLayout" ptr)
       <*> peek (offset @"dstImage" ptr)
       <*> peek (offset @"dstImageLayout" ptr)
       <*> peek (offset @"regionCount" ptr)
       <*> peek (offset @"pRegions" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"srcImage" ptr val
    pokeField @"srcImageLayout" ptr val
    pokeField @"dstImage" ptr val
    pokeField @"dstImageLayout" ptr val
    pokeField @"regionCount" ptr val
    pokeField @"pRegions" ptr val

instance Offset "sType" VkResolveImageInfo2KHR where
  rawOffset = #{offset VkResolveImageInfo2KHR, sType}

instance Offset "pNext" VkResolveImageInfo2KHR where
  rawOffset = #{offset VkResolveImageInfo2KHR, pNext}

instance Offset "srcImage" VkResolveImageInfo2KHR where
  rawOffset = #{offset VkResolveImageInfo2KHR, srcImage}

instance Offset "srcImageLayout" VkResolveImageInfo2KHR where
  rawOffset = #{offset VkResolveImageInfo2KHR, srcImageLayout}

instance Offset "dstImage" VkResolveImageInfo2KHR where
  rawOffset = #{offset VkResolveImageInfo2KHR, dstImage}

instance Offset "dstImageLayout" VkResolveImageInfo2KHR where
  rawOffset = #{offset VkResolveImageInfo2KHR, dstImageLayout}

instance Offset "regionCount" VkResolveImageInfo2KHR where
  rawOffset = #{offset VkResolveImageInfo2KHR, regionCount}

instance Offset "pRegions" VkResolveImageInfo2KHR where
  rawOffset = #{offset VkResolveImageInfo2KHR, pRegions}

#else

module Vulkan.Types.Struct.VkResolveImageInfo2KHR where

#endif