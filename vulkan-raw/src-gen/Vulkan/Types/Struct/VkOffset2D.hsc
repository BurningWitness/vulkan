{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Struct.VkOffset2D where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset



data {-# CTYPE "vulkan/vulkan.h" "VkOffset2D" #-} VkOffset2D =
       VkOffset2D
         { x :: #{type int32_t}
         , y :: #{type int32_t}
         }

instance Storable VkOffset2D where
  sizeOf    _ = #{size      VkOffset2D}
  alignment _ = #{alignment VkOffset2D}

  peek ptr = 
    VkOffset2D
       <$> peek (offset @"x" ptr)
       <*> peek (offset @"y" ptr)

  poke ptr val = do
    pokeField @"x" ptr val
    pokeField @"y" ptr val

instance Offset "x" VkOffset2D where
  rawOffset = #{offset VkOffset2D, x}

instance Offset "y" VkOffset2D where
  rawOffset = #{offset VkOffset2D, y}