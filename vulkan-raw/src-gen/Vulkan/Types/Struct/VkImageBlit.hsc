{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
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
  sizeOf    _ = #{size      struct VkImageBlit}
  alignment _ = #{alignment struct VkImageBlit}

  peek ptr = 
    VkImageBlit
       <$> peek (offset @"srcSubresource" ptr)
       <*> peek (offset @"srcOffsets" ptr)
       <*> peek (offset @"dstSubresource" ptr)
       <*> peek (offset @"dstOffsets" ptr)

  poke ptr val = do
    pokeField @"srcSubresource" ptr val
    pokeField @"srcOffsets" ptr val
    pokeField @"dstSubresource" ptr val
    pokeField @"dstOffsets" ptr val

instance Offset "srcSubresource" VkImageBlit where
  rawOffset = #{offset struct VkImageBlit, srcSubresource}

instance Offset "srcOffsets" VkImageBlit where
  rawOffset = #{offset struct VkImageBlit, srcOffsets}

instance Offset "dstSubresource" VkImageBlit where
  rawOffset = #{offset struct VkImageBlit, dstSubresource}

instance Offset "dstOffsets" VkImageBlit where
  rawOffset = #{offset struct VkImageBlit, dstOffsets}