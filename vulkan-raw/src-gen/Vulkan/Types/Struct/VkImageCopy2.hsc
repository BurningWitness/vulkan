{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_VERSION_1_3

module Vulkan.Types.Struct.VkImageCopy2 where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkExtent3D
import Vulkan.Types.Struct.VkImageSubresourceLayers
import Vulkan.Types.Struct.VkOffset3D



data {-# CTYPE "vulkan/vulkan.h" "VkImageCopy2" #-} VkImageCopy2 =
       VkImageCopy2
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , srcSubresource :: VkImageSubresourceLayers
         , srcOffset :: VkOffset3D -- ^ Specified in pixels for both compressed and uncompressed images
         , dstSubresource :: VkImageSubresourceLayers
         , dstOffset :: VkOffset3D -- ^ Specified in pixels for both compressed and uncompressed images
         , extent :: VkExtent3D -- ^ Specified in pixels for both compressed and uncompressed images
         }

instance Storable VkImageCopy2 where
  sizeOf    _ = #{size      VkImageCopy2}
  alignment _ = #{alignment VkImageCopy2}

  peek ptr = 
    VkImageCopy2
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"srcSubresource" ptr)
       <*> peek (offset @"srcOffset" ptr)
       <*> peek (offset @"dstSubresource" ptr)
       <*> peek (offset @"dstOffset" ptr)
       <*> peek (offset @"extent" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"srcSubresource" ptr val
    pokeField @"srcOffset" ptr val
    pokeField @"dstSubresource" ptr val
    pokeField @"dstOffset" ptr val
    pokeField @"extent" ptr val

instance Offset "sType" VkImageCopy2 where
  rawOffset = #{offset VkImageCopy2, sType}

instance Offset "pNext" VkImageCopy2 where
  rawOffset = #{offset VkImageCopy2, pNext}

instance Offset "srcSubresource" VkImageCopy2 where
  rawOffset = #{offset VkImageCopy2, srcSubresource}

instance Offset "srcOffset" VkImageCopy2 where
  rawOffset = #{offset VkImageCopy2, srcOffset}

instance Offset "dstSubresource" VkImageCopy2 where
  rawOffset = #{offset VkImageCopy2, dstSubresource}

instance Offset "dstOffset" VkImageCopy2 where
  rawOffset = #{offset VkImageCopy2, dstOffset}

instance Offset "extent" VkImageCopy2 where
  rawOffset = #{offset VkImageCopy2, extent}

#else

module Vulkan.Types.Struct.VkImageCopy2 where

#endif