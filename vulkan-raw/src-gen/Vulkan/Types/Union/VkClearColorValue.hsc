{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Union.VkClearColorValue where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset



data {-# CTYPE "vulkan/vulkan.h" "VkClearColorValue" #-} VkClearColorValue =
       VkClearColorValue
         { float32 :: #{type float}
         , int32 :: #{type int32_t}
         , uint32 :: #{type uint32_t}
         }

instance Storable VkClearColorValue where
  sizeOf    _ = #{size      VkClearColorValue}
  alignment _ = #{alignment VkClearColorValue}

  peek ptr = 
    VkClearColorValue
       <$> peek (Foreign.Storable.Offset.offset @"float32" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"int32" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"uint32" ptr)

  poke ptr val = do
    pokeField @"float32" ptr val
    pokeField @"int32" ptr val
    pokeField @"uint32" ptr val

instance Offset "float32" VkClearColorValue where
  rawOffset = #{offset VkClearColorValue, float32}

instance Offset "int32" VkClearColorValue where
  rawOffset = #{offset VkClearColorValue, int32}

instance Offset "uint32" VkClearColorValue where
  rawOffset = #{offset VkClearColorValue, uint32}