{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
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
  sizeOf    _ = #{size      VkPipelineColorBlendAttachmentState}
  alignment _ = #{alignment VkPipelineColorBlendAttachmentState}

  peek ptr = 
    VkPipelineColorBlendAttachmentState
       <$> peek (Foreign.Storable.Offset.offset @"blendEnable" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"srcColorBlendFactor" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"dstColorBlendFactor" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"colorBlendOp" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"srcAlphaBlendFactor" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"dstAlphaBlendFactor" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"alphaBlendOp" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"colorWriteMask" ptr)

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
  rawOffset = #{offset VkPipelineColorBlendAttachmentState, blendEnable}

instance Offset "srcColorBlendFactor" VkPipelineColorBlendAttachmentState where
  rawOffset = #{offset VkPipelineColorBlendAttachmentState, srcColorBlendFactor}

instance Offset "dstColorBlendFactor" VkPipelineColorBlendAttachmentState where
  rawOffset = #{offset VkPipelineColorBlendAttachmentState, dstColorBlendFactor}

instance Offset "colorBlendOp" VkPipelineColorBlendAttachmentState where
  rawOffset = #{offset VkPipelineColorBlendAttachmentState, colorBlendOp}

instance Offset "srcAlphaBlendFactor" VkPipelineColorBlendAttachmentState where
  rawOffset = #{offset VkPipelineColorBlendAttachmentState, srcAlphaBlendFactor}

instance Offset "dstAlphaBlendFactor" VkPipelineColorBlendAttachmentState where
  rawOffset = #{offset VkPipelineColorBlendAttachmentState, dstAlphaBlendFactor}

instance Offset "alphaBlendOp" VkPipelineColorBlendAttachmentState where
  rawOffset = #{offset VkPipelineColorBlendAttachmentState, alphaBlendOp}

instance Offset "colorWriteMask" VkPipelineColorBlendAttachmentState where
  rawOffset = #{offset VkPipelineColorBlendAttachmentState, colorWriteMask}