{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_NV_shading_rate_image

module Vulkan.Types.Struct.VkCoarseSampleLocationNV where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset



data {-# CTYPE "vulkan/vulkan.h" "VkCoarseSampleLocationNV" #-} VkCoarseSampleLocationNV =
       VkCoarseSampleLocationNV
         { pixelX :: #{type uint32_t}
         , pixelY :: #{type uint32_t}
         , sample :: #{type uint32_t}
         }

instance Storable VkCoarseSampleLocationNV where
  sizeOf    _ = #{size      VkCoarseSampleLocationNV}
  alignment _ = #{alignment VkCoarseSampleLocationNV}

  peek ptr = 
    VkCoarseSampleLocationNV
       <$> peek (Foreign.Storable.Offset.offset @"pixelX" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pixelY" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"sample" ptr)

  poke ptr val = do
    pokeField @"pixelX" ptr val
    pokeField @"pixelY" ptr val
    pokeField @"sample" ptr val

instance Offset "pixelX" VkCoarseSampleLocationNV where
  rawOffset = #{offset VkCoarseSampleLocationNV, pixelX}

instance Offset "pixelY" VkCoarseSampleLocationNV where
  rawOffset = #{offset VkCoarseSampleLocationNV, pixelY}

instance Offset "sample" VkCoarseSampleLocationNV where
  rawOffset = #{offset VkCoarseSampleLocationNV, sample}

#else

module Vulkan.Types.Struct.VkCoarseSampleLocationNV where

#endif