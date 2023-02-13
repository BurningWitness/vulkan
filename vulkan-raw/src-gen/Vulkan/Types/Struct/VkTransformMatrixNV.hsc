{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_NV_ray_tracing

module Vulkan.Types.Struct.VkTransformMatrixNV where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset



data {-# CTYPE "vulkan/vulkan.h" "VkTransformMatrixNV" #-} VkTransformMatrixNV =
       VkTransformMatrixNV
         { matrix :: #{type float}
         }

instance Storable VkTransformMatrixNV where
  sizeOf    _ = #{size      VkTransformMatrixNV}
  alignment _ = #{alignment VkTransformMatrixNV}

  peek ptr = 
    VkTransformMatrixNV
       <$> peek (Foreign.Storable.Offset.offset @"matrix" ptr)


  poke ptr val = do
    pokeField @"matrix" ptr val

instance Offset "matrix" VkTransformMatrixNV where
  rawOffset = #{offset VkTransformMatrixNV, matrix}

#else

module Vulkan.Types.Struct.VkTransformMatrixNV where

#endif