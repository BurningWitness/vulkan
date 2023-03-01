{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Struct.VkRect2D where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Struct.VkExtent2D
import Vulkan.Types.Struct.VkOffset2D



data {-# CTYPE "vulkan/vulkan.h" "VkRect2D" #-} VkRect2D =
       VkRect2D
         { offset :: VkOffset2D
         , extent :: VkExtent2D
         }

instance Storable VkRect2D where
  sizeOf    _ = #{size      VkRect2D}
  alignment _ = #{alignment VkRect2D}

  peek ptr = 
    VkRect2D
       <$> peek (Foreign.Storable.Offset.offset @"offset" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"extent" ptr)

  poke ptr val = do
    pokeField @"offset" ptr val
    pokeField @"extent" ptr val

instance Offset "offset" VkRect2D where
  rawOffset = #{offset VkRect2D, offset}

instance Offset "extent" VkRect2D where
  rawOffset = #{offset VkRect2D, extent}