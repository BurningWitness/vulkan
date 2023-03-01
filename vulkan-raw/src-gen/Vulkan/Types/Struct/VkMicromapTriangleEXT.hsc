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

module Vulkan.Types.Struct.VkMicromapTriangleEXT where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset



data {-# CTYPE "vulkan/vulkan.h" "VkMicromapTriangleEXT" #-} VkMicromapTriangleEXT =
       VkMicromapTriangleEXT
         { dataOffset :: #{type uint32_t} -- ^ Specified in bytes
         , subdivisionLevel :: #{type uint16_t}
         , format :: #{type uint16_t}
         }

instance Storable VkMicromapTriangleEXT where
  sizeOf    _ = #{size      VkMicromapTriangleEXT}
  alignment _ = #{alignment VkMicromapTriangleEXT}

  peek ptr = 
    VkMicromapTriangleEXT
       <$> peek (Foreign.Storable.Offset.offset @"dataOffset" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"subdivisionLevel" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"format" ptr)

  poke ptr val = do
    pokeField @"dataOffset" ptr val
    pokeField @"subdivisionLevel" ptr val
    pokeField @"format" ptr val

instance Offset "dataOffset" VkMicromapTriangleEXT where
  rawOffset = #{offset VkMicromapTriangleEXT, dataOffset}

instance Offset "subdivisionLevel" VkMicromapTriangleEXT where
  rawOffset = #{offset VkMicromapTriangleEXT, subdivisionLevel}

instance Offset "format" VkMicromapTriangleEXT where
  rawOffset = #{offset VkMicromapTriangleEXT, format}

#else

module Vulkan.Types.Struct.VkMicromapTriangleEXT where

#endif