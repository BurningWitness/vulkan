{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
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
  sizeOf    _ = #{size      struct VkSRTDataNV}
  alignment _ = #{alignment struct VkSRTDataNV}

  peek ptr = 
    VkSRTDataNV
       <$> peek (offset @"sx" ptr)
       <*> peek (offset @"a" ptr)
       <*> peek (offset @"b" ptr)
       <*> peek (offset @"pvx" ptr)
       <*> peek (offset @"sy" ptr)
       <*> peek (offset @"c" ptr)
       <*> peek (offset @"pvy" ptr)
       <*> peek (offset @"sz" ptr)
       <*> peek (offset @"pvz" ptr)
       <*> peek (offset @"qx" ptr)
       <*> peek (offset @"qy" ptr)
       <*> peek (offset @"qz" ptr)
       <*> peek (offset @"qw" ptr)
       <*> peek (offset @"tx" ptr)
       <*> peek (offset @"ty" ptr)
       <*> peek (offset @"tz" ptr)

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
  rawOffset = #{offset struct VkSRTDataNV, sx}

instance Offset "a" VkSRTDataNV where
  rawOffset = #{offset struct VkSRTDataNV, a}

instance Offset "b" VkSRTDataNV where
  rawOffset = #{offset struct VkSRTDataNV, b}

instance Offset "pvx" VkSRTDataNV where
  rawOffset = #{offset struct VkSRTDataNV, pvx}

instance Offset "sy" VkSRTDataNV where
  rawOffset = #{offset struct VkSRTDataNV, sy}

instance Offset "c" VkSRTDataNV where
  rawOffset = #{offset struct VkSRTDataNV, c}

instance Offset "pvy" VkSRTDataNV where
  rawOffset = #{offset struct VkSRTDataNV, pvy}

instance Offset "sz" VkSRTDataNV where
  rawOffset = #{offset struct VkSRTDataNV, sz}

instance Offset "pvz" VkSRTDataNV where
  rawOffset = #{offset struct VkSRTDataNV, pvz}

instance Offset "qx" VkSRTDataNV where
  rawOffset = #{offset struct VkSRTDataNV, qx}

instance Offset "qy" VkSRTDataNV where
  rawOffset = #{offset struct VkSRTDataNV, qy}

instance Offset "qz" VkSRTDataNV where
  rawOffset = #{offset struct VkSRTDataNV, qz}

instance Offset "qw" VkSRTDataNV where
  rawOffset = #{offset struct VkSRTDataNV, qw}

instance Offset "tx" VkSRTDataNV where
  rawOffset = #{offset struct VkSRTDataNV, tx}

instance Offset "ty" VkSRTDataNV where
  rawOffset = #{offset struct VkSRTDataNV, ty}

instance Offset "tz" VkSRTDataNV where
  rawOffset = #{offset struct VkSRTDataNV, tz}

#else

module Vulkan.Types.Struct.VkSRTDataNV where

#endif