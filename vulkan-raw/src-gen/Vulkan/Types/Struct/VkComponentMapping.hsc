{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Struct.VkComponentMapping where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkComponentSwizzle



data {-# CTYPE "vulkan/vulkan.h" "VkComponentMapping" #-} VkComponentMapping =
       VkComponentMapping
         { r :: VkComponentSwizzle
         , g :: VkComponentSwizzle
         , b :: VkComponentSwizzle
         , a :: VkComponentSwizzle
         }

instance Storable VkComponentMapping where
  sizeOf    _ = #{size      VkComponentMapping}
  alignment _ = #{alignment VkComponentMapping}

  peek ptr = 
    VkComponentMapping
       <$> peek (Foreign.Storable.Offset.offset @"r" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"g" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"b" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"a" ptr)

  poke ptr val = do
    pokeField @"r" ptr val
    pokeField @"g" ptr val
    pokeField @"b" ptr val
    pokeField @"a" ptr val

instance Offset "r" VkComponentMapping where
  rawOffset = #{offset VkComponentMapping, r}

instance Offset "g" VkComponentMapping where
  rawOffset = #{offset VkComponentMapping, g}

instance Offset "b" VkComponentMapping where
  rawOffset = #{offset VkComponentMapping, b}

instance Offset "a" VkComponentMapping where
  rawOffset = #{offset VkComponentMapping, a}