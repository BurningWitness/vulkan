{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Struct.VkClearRect where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Struct.VkRect2D



data {-# CTYPE "vulkan/vulkan.h" "VkClearRect" #-} VkClearRect =
       VkClearRect
         { rect :: VkRect2D
         , baseArrayLayer :: #{type uint32_t}
         , layerCount :: #{type uint32_t}
         }

instance Storable VkClearRect where
  sizeOf    _ = #{size      VkClearRect}
  alignment _ = #{alignment VkClearRect}

  peek ptr = 
    VkClearRect
       <$> peek (Foreign.Storable.Offset.offset @"rect" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"baseArrayLayer" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"layerCount" ptr)

  poke ptr val = do
    pokeField @"rect" ptr val
    pokeField @"baseArrayLayer" ptr val
    pokeField @"layerCount" ptr val

instance Offset "rect" VkClearRect where
  rawOffset = #{offset VkClearRect, rect}

instance Offset "baseArrayLayer" VkClearRect where
  rawOffset = #{offset VkClearRect, baseArrayLayer}

instance Offset "layerCount" VkClearRect where
  rawOffset = #{offset VkClearRect, layerCount}