{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_NV_ray_tracing_motion_blur

module Vulkan.Types.Struct.VkSRTDataNV where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset



data {-# CTYPE "vulkan/vulkan.h" "VkSRTDataNV" #-} VkSRTDataNV =
       VkSRTDataNV
         { sx :: #{type float}
         , a :: #{type float}
         , b :: #{type float}
         , pvx :: #{type float}
         , sy :: #{type float}
         , c :: #{type float}
         , pvy :: #{type float}
         , sz :: #{type float}
         , pvz :: #{type float}
         , qx :: #{type float}
         , qy :: #{type float}
         , qz :: #{type float}
         , qw :: #{type float}
         , tx :: #{type float}
         , ty :: #{type float}
         , tz :: #{type float}
         }

instance Storable VkSRTDataNV where
  sizeOf    _ = #{size      VkSRTDataNV}
  alignment _ = #{alignment VkSRTDataNV}

  peek ptr = 
    VkSRTDataNV
       <$> peek (Foreign.Storable.Offset.offset @"sx" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"a" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"b" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pvx" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"sy" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"c" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pvy" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"sz" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pvz" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"qx" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"qy" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"qz" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"qw" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"tx" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"ty" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"tz" ptr)

  poke ptr val = do
    pokeField @"sx" ptr val
    pokeField @"a" ptr val
    pokeField @"b" ptr val
    pokeField @"pvx" ptr val
    pokeField @"sy" ptr val
    pokeField @"c" ptr val
    pokeField @"pvy" ptr val
    pokeField @"sz" ptr val
    pokeField @"pvz" ptr val
    pokeField @"qx" ptr val
    pokeField @"qy" ptr val
    pokeField @"qz" ptr val
    pokeField @"qw" ptr val
    pokeField @"tx" ptr val
    pokeField @"ty" ptr val
    pokeField @"tz" ptr val

instance Offset "sx" VkSRTDataNV where
  rawOffset = #{offset VkSRTDataNV, sx}

instance Offset "a" VkSRTDataNV where
  rawOffset = #{offset VkSRTDataNV, a}

instance Offset "b" VkSRTDataNV where
  rawOffset = #{offset VkSRTDataNV, b}

instance Offset "pvx" VkSRTDataNV where
  rawOffset = #{offset VkSRTDataNV, pvx}

instance Offset "sy" VkSRTDataNV where
  rawOffset = #{offset VkSRTDataNV, sy}

instance Offset "c" VkSRTDataNV where
  rawOffset = #{offset VkSRTDataNV, c}

instance Offset "pvy" VkSRTDataNV where
  rawOffset = #{offset VkSRTDataNV, pvy}

instance Offset "sz" VkSRTDataNV where
  rawOffset = #{offset VkSRTDataNV, sz}

instance Offset "pvz" VkSRTDataNV where
  rawOffset = #{offset VkSRTDataNV, pvz}

instance Offset "qx" VkSRTDataNV where
  rawOffset = #{offset VkSRTDataNV, qx}

instance Offset "qy" VkSRTDataNV where
  rawOffset = #{offset VkSRTDataNV, qy}

instance Offset "qz" VkSRTDataNV where
  rawOffset = #{offset VkSRTDataNV, qz}

instance Offset "qw" VkSRTDataNV where
  rawOffset = #{offset VkSRTDataNV, qw}

instance Offset "tx" VkSRTDataNV where
  rawOffset = #{offset VkSRTDataNV, tx}

instance Offset "ty" VkSRTDataNV where
  rawOffset = #{offset VkSRTDataNV, ty}

instance Offset "tz" VkSRTDataNV where
  rawOffset = #{offset VkSRTDataNV, tz}

#else

module Vulkan.Types.Struct.VkSRTDataNV where

#endif