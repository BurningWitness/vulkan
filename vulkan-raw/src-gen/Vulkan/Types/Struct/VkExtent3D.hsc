{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Struct.VkExtent3D where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset



data {-# CTYPE "vulkan/vulkan.h" "VkExtent3D" #-} VkExtent3D =
       VkExtent3D
         { width :: #{type uint32_t}
         , height :: #{type uint32_t}
         , depth :: #{type uint32_t}
         }

instance Storable VkExtent3D where
  sizeOf    _ = #{size      VkExtent3D}
  alignment _ = #{alignment VkExtent3D}

  peek ptr = 
    VkExtent3D
       <$> peek (Foreign.Storable.Offset.offset @"width" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"height" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"depth" ptr)

  poke ptr val = do
    pokeField @"width" ptr val
    pokeField @"height" ptr val
    pokeField @"depth" ptr val

instance Offset "width" VkExtent3D where
  rawOffset = #{offset VkExtent3D, width}

instance Offset "height" VkExtent3D where
  rawOffset = #{offset VkExtent3D, height}

instance Offset "depth" VkExtent3D where
  rawOffset = #{offset VkExtent3D, depth}