{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_NV_clip_space_w_scaling

module Vulkan.Types.Struct.VkViewportWScalingNV where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset



data {-# CTYPE "vulkan/vulkan.h" "VkViewportWScalingNV" #-} VkViewportWScalingNV =
       VkViewportWScalingNV
         { xcoeff :: #{type float}
         , ycoeff :: #{type float}
         }

instance Storable VkViewportWScalingNV where
  sizeOf    _ = #{size      VkViewportWScalingNV}
  alignment _ = #{alignment VkViewportWScalingNV}

  peek ptr = 
    VkViewportWScalingNV
       <$> peek (Foreign.Storable.Offset.offset @"xcoeff" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"ycoeff" ptr)

  poke ptr val = do
    pokeField @"xcoeff" ptr val
    pokeField @"ycoeff" ptr val

instance Offset "xcoeff" VkViewportWScalingNV where
  rawOffset = #{offset VkViewportWScalingNV, xcoeff}

instance Offset "ycoeff" VkViewportWScalingNV where
  rawOffset = #{offset VkViewportWScalingNV, ycoeff}

#else

module Vulkan.Types.Struct.VkViewportWScalingNV where

#endif