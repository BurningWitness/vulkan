{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_KHR_acceleration_structure

module Vulkan.Types.Struct.VkTransformMatrixKHR where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset



data {-# CTYPE "vulkan/vulkan.h" "VkTransformMatrixKHR" #-} VkTransformMatrixKHR =
       VkTransformMatrixKHR
         { matrix :: #{type float}
         }

instance Storable VkTransformMatrixKHR where
  sizeOf    _ = #{size      VkTransformMatrixKHR}
  alignment _ = #{alignment VkTransformMatrixKHR}

  peek ptr = 
    VkTransformMatrixKHR
       <$> peek (offset @"matrix" ptr)


  poke ptr val = do
    pokeField @"matrix" ptr val

instance Offset "matrix" VkTransformMatrixKHR where
  rawOffset = #{offset VkTransformMatrixKHR, matrix}

#else

module Vulkan.Types.Struct.VkTransformMatrixKHR where

#endif