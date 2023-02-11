{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Struct.VkPipelineColorBlendAttachmentState where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkBlendFactor
import Vulkan.Types.Enum.VkBlendOp
import Vulkan.Types.Enum.VkColorComponentFlags



data {-# CTYPE "vulkan/vulkan.h" "VkPipelineColorBlendAttachmentState" #-} VkPipelineColorBlendAttachmentState =
       VkPipelineColorBlendAttachmentState
         { blendEnable :: VkBool32
         , srcColorBlendFactor :: VkBlendFactor
         , dstColorBlendFactor :: VkBlendFactor
         , colorBlendOp :: VkBlendOp
         , srcAlphaBlendFactor :: VkBlendFactor
         , dstAlphaBlendFactor :: VkBlendFactor
         , alphaBlendOp :: VkBlendOp
         , colorWriteMask :: VkColorComponentFlags
         }

instance Storable VkPipelineColorBlendAttachmentState where
  sizeOf    _ = #{size      struct VkPipelineColorBlendAttachmentState}
  alignment _ = #{alignment struct VkPipelineColorBlendAttachmentState}

  peek ptr = 
    VkPipelineColorBlendAttachmentState
       <$> peek (offset @"blendEnable" ptr)
       <*> peek (offset @"srcColorBlendFactor" ptr)
       <*> peek (offset @"dstColorBlendFactor" ptr)
       <*> peek (offset @"colorBlendOp" ptr)
       <*> peek (offset @"srcAlphaBlendFactor" ptr)
       <*> peek (offset @"dstAlphaBlendFactor" ptr)
       <*> peek (offset @"alphaBlendOp" ptr)
       <*> peek (offset @"colorWriteMask" ptr)

  poke ptr val = do
    pokeField @"blendEnable" ptr val
    pokeField @"srcColorBlendFactor" ptr val
    pokeField @"dstColorBlendFactor" ptr val
    pokeField @"colorBlendOp" ptr val
    pokeField @"srcAlphaBlendFactor" ptr val
    pokeField @"dstAlphaBlendFactor" ptr val
    pokeField @"alphaBlendOp" ptr val
    pokeField @"colorWriteMask" ptr val

instance Offset "blendEnable" VkPipelineColorBlendAttachmentState where
  rawOffset = #{offset struct VkPipelineColorBlendAttachmentState, blendEnable}

instance Offset "srcColorBlendFactor" VkPipelineColorBlendAttachmentState where
  rawOffset = #{offset struct VkPipelineColorBlendAttachmentState, srcColorBlendFactor}

instance Offset "dstColorBlendFactor" VkPipelineColorBlendAttachmentState where
  rawOffset = #{offset struct VkPipelineColorBlendAttachmentState, dstColorBlendFactor}

instance Offset "colorBlendOp" VkPipelineColorBlendAttachmentState where
  rawOffset = #{offset struct VkPipelineColorBlendAttachmentState, colorBlendOp}

instance Offset "srcAlphaBlendFactor" VkPipelineColorBlendAttachmentState where
  rawOffset = #{offset struct VkPipelineColorBlendAttachmentState, srcAlphaBlendFactor}

instance Offset "dstAlphaBlendFactor" VkPipelineColorBlendAttachmentState where
  rawOffset = #{offset struct VkPipelineColorBlendAttachmentState, dstAlphaBlendFactor}

instance Offset "alphaBlendOp" VkPipelineColorBlendAttachmentState where
  rawOffset = #{offset struct VkPipelineColorBlendAttachmentState, alphaBlendOp}

instance Offset "colorWriteMask" VkPipelineColorBlendAttachmentState where
  rawOffset = #{offset struct VkPipelineColorBlendAttachmentState, colorWriteMask}