{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_EXT_opacity_micromap

module Vulkan.Types.Struct.VkMicromapUsageEXT where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset



data {-# CTYPE "vulkan/vulkan.h" "VkMicromapUsageEXT" #-} VkMicromapUsageEXT =
       VkMicromapUsageEXT
         { count :: #{type uint32_t}
         , subdivisionLevel :: #{type uint32_t}
         , format :: #{type uint32_t} -- ^ Interpretation depends on parent type
         }

instance Storable VkMicromapUsageEXT where
  sizeOf    _ = #{size      VkMicromapUsageEXT}
  alignment _ = #{alignment VkMicromapUsageEXT}

  peek ptr = 
    VkMicromapUsageEXT
       <$> peek (Foreign.Storable.Offset.offset @"count" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"subdivisionLevel" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"format" ptr)

  poke ptr val = do
    pokeField @"count" ptr val
    pokeField @"subdivisionLevel" ptr val
    pokeField @"format" ptr val

instance Offset "count" VkMicromapUsageEXT where
  rawOffset = #{offset VkMicromapUsageEXT, count}

instance Offset "subdivisionLevel" VkMicromapUsageEXT where
  rawOffset = #{offset VkMicromapUsageEXT, subdivisionLevel}

instance Offset "format" VkMicromapUsageEXT where
  rawOffset = #{offset VkMicromapUsageEXT, format}

#else

module Vulkan.Types.Struct.VkMicromapUsageEXT where

#endif