{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_EXT_extended_dynamic_state3

module Vulkan.Types.Struct.VkColorBlendAdvancedEXT where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkBlendOp
import Vulkan.Types.Enum.VkBlendOverlapEXT



data {-# CTYPE "vulkan/vulkan.h" "VkColorBlendAdvancedEXT" #-} VkColorBlendAdvancedEXT =
       VkColorBlendAdvancedEXT
         { advancedBlendOp :: VkBlendOp
         , srcPremultiplied :: VkBool32
         , dstPremultiplied :: VkBool32
         , blendOverlap :: VkBlendOverlapEXT
         , clampResults :: VkBool32
         }

instance Storable VkColorBlendAdvancedEXT where
  sizeOf    _ = #{size      VkColorBlendAdvancedEXT}
  alignment _ = #{alignment VkColorBlendAdvancedEXT}

  peek ptr = 
    VkColorBlendAdvancedEXT
       <$> peek (offset @"advancedBlendOp" ptr)
       <*> peek (offset @"srcPremultiplied" ptr)
       <*> peek (offset @"dstPremultiplied" ptr)
       <*> peek (offset @"blendOverlap" ptr)
       <*> peek (offset @"clampResults" ptr)

  poke ptr val = do
    pokeField @"advancedBlendOp" ptr val
    pokeField @"srcPremultiplied" ptr val
    pokeField @"dstPremultiplied" ptr val
    pokeField @"blendOverlap" ptr val
    pokeField @"clampResults" ptr val

instance Offset "advancedBlendOp" VkColorBlendAdvancedEXT where
  rawOffset = #{offset VkColorBlendAdvancedEXT, advancedBlendOp}

instance Offset "srcPremultiplied" VkColorBlendAdvancedEXT where
  rawOffset = #{offset VkColorBlendAdvancedEXT, srcPremultiplied}

instance Offset "dstPremultiplied" VkColorBlendAdvancedEXT where
  rawOffset = #{offset VkColorBlendAdvancedEXT, dstPremultiplied}

instance Offset "blendOverlap" VkColorBlendAdvancedEXT where
  rawOffset = #{offset VkColorBlendAdvancedEXT, blendOverlap}

instance Offset "clampResults" VkColorBlendAdvancedEXT where
  rawOffset = #{offset VkColorBlendAdvancedEXT, clampResults}

#else

module Vulkan.Types.Struct.VkColorBlendAdvancedEXT where

#endif