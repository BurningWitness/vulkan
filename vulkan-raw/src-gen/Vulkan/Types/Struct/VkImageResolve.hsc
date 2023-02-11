{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Struct.VkImageResolve where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Struct.VkExtent3D
import Vulkan.Types.Struct.VkImageSubresourceLayers
import Vulkan.Types.Struct.VkOffset3D



data {-# CTYPE "vulkan/vulkan.h" "VkImageResolve" #-} VkImageResolve =
       VkImageResolve
         { srcSubresource :: VkImageSubresourceLayers
         , srcOffset :: VkOffset3D
         , dstSubresource :: VkImageSubresourceLayers
         , dstOffset :: VkOffset3D
         , extent :: VkExtent3D
         }

instance Storable VkImageResolve where
  sizeOf    _ = #{size      struct VkImageResolve}
  alignment _ = #{alignment struct VkImageResolve}

  peek ptr = 
    VkImageResolve
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

instance Offset "srcSubresource" VkImageResolve where
  rawOffset = #{offset struct VkImageResolve, srcSubresource}

instance Offset "srcOffset" VkImageResolve where
  rawOffset = #{offset struct VkImageResolve, srcOffset}

instance Offset "dstSubresource" VkImageResolve where
  rawOffset = #{offset struct VkImageResolve, dstSubresource}

instance Offset "dstOffset" VkImageResolve where
  rawOffset = #{offset struct VkImageResolve, dstOffset}

instance Offset "extent" VkImageResolve where
  rawOffset = #{offset struct VkImageResolve, extent}