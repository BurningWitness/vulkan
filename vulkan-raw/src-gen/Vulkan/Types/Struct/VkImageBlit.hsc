{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Struct.VkImageBlit where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Struct.VkImageSubresourceLayers
import Vulkan.Types.Struct.VkOffset3D



data {-# CTYPE "vulkan/vulkan.h" "VkImageBlit" #-} VkImageBlit =
       VkImageBlit
         { srcSubresource :: VkImageSubresourceLayers
         , srcOffsets :: VkOffset3D -- ^ Specified in pixels for both compressed and uncompressed images
         , dstSubresource :: VkImageSubresourceLayers
         , dstOffsets :: VkOffset3D -- ^ Specified in pixels for both compressed and uncompressed images
         }

instance Storable VkImageBlit where
  sizeOf    _ = #{size      VkImageBlit}
  alignment _ = #{alignment VkImageBlit}

  peek ptr = 
    VkImageBlit
       <$> peek (Foreign.Storable.Offset.offset @"srcSubresource" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"srcOffsets" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"dstSubresource" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"dstOffsets" ptr)

  poke ptr val = do
    pokeField @"srcSubresource" ptr val
    pokeField @"srcOffsets" ptr val
    pokeField @"dstSubresource" ptr val
    pokeField @"dstOffsets" ptr val

instance Offset "srcSubresource" VkImageBlit where
  rawOffset = #{offset VkImageBlit, srcSubresource}

instance Offset "srcOffsets" VkImageBlit where
  rawOffset = #{offset VkImageBlit, srcOffsets}

instance Offset "dstSubresource" VkImageBlit where
  rawOffset = #{offset VkImageBlit, dstSubresource}

instance Offset "dstOffsets" VkImageBlit where
  rawOffset = #{offset VkImageBlit, dstOffsets}