{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Struct.VkImageCopy where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Struct.VkExtent3D
import Vulkan.Types.Struct.VkImageSubresourceLayers
import Vulkan.Types.Struct.VkOffset3D



data {-# CTYPE "vulkan/vulkan.h" "VkImageCopy" #-} VkImageCopy =
       VkImageCopy
         { srcSubresource :: VkImageSubresourceLayers
         , srcOffset :: VkOffset3D -- ^ Specified in pixels for both compressed and uncompressed images
         , dstSubresource :: VkImageSubresourceLayers
         , dstOffset :: VkOffset3D -- ^ Specified in pixels for both compressed and uncompressed images
         , extent :: VkExtent3D -- ^ Specified in pixels for both compressed and uncompressed images
         }

instance Storable VkImageCopy where
  sizeOf    _ = #{size      VkImageCopy}
  alignment _ = #{alignment VkImageCopy}

  peek ptr = 
    VkImageCopy
       <$> peek (offset @"srcSubresource" ptr)
       <*> peek (offset @"srcOffset" ptr)
       <*> peek (offset @"dstSubresource" ptr)
       <*> peek (offset @"dstOffset" ptr)
       <*> peek (offset @"extent" ptr)

  poke ptr val = do
    pokeField @"srcSubresource" ptr val
    pokeField @"srcOffset" ptr val
    pokeField @"dstSubresource" ptr val
    pokeField @"dstOffset" ptr val
    pokeField @"extent" ptr val

instance Offset "srcSubresource" VkImageCopy where
  rawOffset = #{offset VkImageCopy, srcSubresource}

instance Offset "srcOffset" VkImageCopy where
  rawOffset = #{offset VkImageCopy, srcOffset}

instance Offset "dstSubresource" VkImageCopy where
  rawOffset = #{offset VkImageCopy, dstSubresource}

instance Offset "dstOffset" VkImageCopy where
  rawOffset = #{offset VkImageCopy, dstOffset}

instance Offset "extent" VkImageCopy where
  rawOffset = #{offset VkImageCopy, extent}