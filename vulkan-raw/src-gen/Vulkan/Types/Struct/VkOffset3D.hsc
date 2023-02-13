{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Struct.VkOffset3D where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset



data {-# CTYPE "vulkan/vulkan.h" "VkOffset3D" #-} VkOffset3D =
       VkOffset3D
         { x :: #{type int32_t}
         , y :: #{type int32_t}
         , z :: #{type int32_t}
         }

instance Storable VkOffset3D where
  sizeOf    _ = #{size      VkOffset3D}
  alignment _ = #{alignment VkOffset3D}

  peek ptr = 
    VkOffset3D
       <$> peek (offset @"x" ptr)
       <*> peek (offset @"y" ptr)
       <*> peek (offset @"z" ptr)

  poke ptr val = do
    pokeField @"x" ptr val
    pokeField @"y" ptr val
    pokeField @"z" ptr val

instance Offset "x" VkOffset3D where
  rawOffset = #{offset VkOffset3D, x}

instance Offset "y" VkOffset3D where
  rawOffset = #{offset VkOffset3D, y}

instance Offset "z" VkOffset3D where
  rawOffset = #{offset VkOffset3D, z}