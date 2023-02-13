{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_EXT_extended_dynamic_state3

module Vulkan.Types.Struct.VkColorBlendEquationEXT where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkBlendFactor
import Vulkan.Types.Enum.VkBlendOp



data {-# CTYPE "vulkan/vulkan.h" "VkColorBlendEquationEXT" #-} VkColorBlendEquationEXT =
       VkColorBlendEquationEXT
         { srcColorBlendFactor :: VkBlendFactor
         , dstColorBlendFactor :: VkBlendFactor
         , colorBlendOp :: VkBlendOp
         , srcAlphaBlendFactor :: VkBlendFactor
         , dstAlphaBlendFactor :: VkBlendFactor
         , alphaBlendOp :: VkBlendOp
         }

instance Storable VkColorBlendEquationEXT where
  sizeOf    _ = #{size      VkColorBlendEquationEXT}
  alignment _ = #{alignment VkColorBlendEquationEXT}

  peek ptr = 
    VkColorBlendEquationEXT
       <$> peek (offset @"srcColorBlendFactor" ptr)
       <*> peek (offset @"dstColorBlendFactor" ptr)
       <*> peek (offset @"colorBlendOp" ptr)
       <*> peek (offset @"srcAlphaBlendFactor" ptr)
       <*> peek (offset @"dstAlphaBlendFactor" ptr)
       <*> peek (offset @"alphaBlendOp" ptr)

  poke ptr val = do
    pokeField @"srcColorBlendFactor" ptr val
    pokeField @"dstColorBlendFactor" ptr val
    pokeField @"colorBlendOp" ptr val
    pokeField @"srcAlphaBlendFactor" ptr val
    pokeField @"dstAlphaBlendFactor" ptr val
    pokeField @"alphaBlendOp" ptr val

instance Offset "srcColorBlendFactor" VkColorBlendEquationEXT where
  rawOffset = #{offset VkColorBlendEquationEXT, srcColorBlendFactor}

instance Offset "dstColorBlendFactor" VkColorBlendEquationEXT where
  rawOffset = #{offset VkColorBlendEquationEXT, dstColorBlendFactor}

instance Offset "colorBlendOp" VkColorBlendEquationEXT where
  rawOffset = #{offset VkColorBlendEquationEXT, colorBlendOp}

instance Offset "srcAlphaBlendFactor" VkColorBlendEquationEXT where
  rawOffset = #{offset VkColorBlendEquationEXT, srcAlphaBlendFactor}

instance Offset "dstAlphaBlendFactor" VkColorBlendEquationEXT where
  rawOffset = #{offset VkColorBlendEquationEXT, dstAlphaBlendFactor}

instance Offset "alphaBlendOp" VkColorBlendEquationEXT where
  rawOffset = #{offset VkColorBlendEquationEXT, alphaBlendOp}

#else

module Vulkan.Types.Struct.VkColorBlendEquationEXT where

#endif