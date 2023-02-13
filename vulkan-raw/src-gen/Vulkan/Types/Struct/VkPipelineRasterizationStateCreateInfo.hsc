{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Struct.VkPipelineRasterizationStateCreateInfo where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkCullModeFlags
import Vulkan.Types.Enum.VkFrontFace
import Vulkan.Types.Enum.VkPipelineRasterizationStateCreateFlags
import Vulkan.Types.Enum.VkPolygonMode
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPipelineRasterizationStateCreateInfo" #-} VkPipelineRasterizationStateCreateInfo =
       VkPipelineRasterizationStateCreateInfo
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , flags :: VkPipelineRasterizationStateCreateFlags
         , depthClampEnable :: VkBool32
         , rasterizerDiscardEnable :: VkBool32
         , polygonMode :: VkPolygonMode -- ^ optional (GL45)
         , cullMode :: VkCullModeFlags
         , frontFace :: VkFrontFace
         , depthBiasEnable :: VkBool32
         , depthBiasConstantFactor :: #{type float}
         , depthBiasClamp :: #{type float}
         , depthBiasSlopeFactor :: #{type float}
         , lineWidth :: #{type float}
         }

instance Storable VkPipelineRasterizationStateCreateInfo where
  sizeOf    _ = #{size      VkPipelineRasterizationStateCreateInfo}
  alignment _ = #{alignment VkPipelineRasterizationStateCreateInfo}

  peek ptr = 
    VkPipelineRasterizationStateCreateInfo
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"flags" ptr)
       <*> peek (offset @"depthClampEnable" ptr)
       <*> peek (offset @"rasterizerDiscardEnable" ptr)
       <*> peek (offset @"polygonMode" ptr)
       <*> peek (offset @"cullMode" ptr)
       <*> peek (offset @"frontFace" ptr)
       <*> peek (offset @"depthBiasEnable" ptr)
       <*> peek (offset @"depthBiasConstantFactor" ptr)
       <*> peek (offset @"depthBiasClamp" ptr)
       <*> peek (offset @"depthBiasSlopeFactor" ptr)
       <*> peek (offset @"lineWidth" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"flags" ptr val
    pokeField @"depthClampEnable" ptr val
    pokeField @"rasterizerDiscardEnable" ptr val
    pokeField @"polygonMode" ptr val
    pokeField @"cullMode" ptr val
    pokeField @"frontFace" ptr val
    pokeField @"depthBiasEnable" ptr val
    pokeField @"depthBiasConstantFactor" ptr val
    pokeField @"depthBiasClamp" ptr val
    pokeField @"depthBiasSlopeFactor" ptr val
    pokeField @"lineWidth" ptr val

instance Offset "sType" VkPipelineRasterizationStateCreateInfo where
  rawOffset = #{offset VkPipelineRasterizationStateCreateInfo, sType}

instance Offset "pNext" VkPipelineRasterizationStateCreateInfo where
  rawOffset = #{offset VkPipelineRasterizationStateCreateInfo, pNext}

instance Offset "flags" VkPipelineRasterizationStateCreateInfo where
  rawOffset = #{offset VkPipelineRasterizationStateCreateInfo, flags}

instance Offset "depthClampEnable" VkPipelineRasterizationStateCreateInfo where
  rawOffset = #{offset VkPipelineRasterizationStateCreateInfo, depthClampEnable}

instance Offset "rasterizerDiscardEnable" VkPipelineRasterizationStateCreateInfo where
  rawOffset = #{offset VkPipelineRasterizationStateCreateInfo, rasterizerDiscardEnable}

instance Offset "polygonMode" VkPipelineRasterizationStateCreateInfo where
  rawOffset = #{offset VkPipelineRasterizationStateCreateInfo, polygonMode}

instance Offset "cullMode" VkPipelineRasterizationStateCreateInfo where
  rawOffset = #{offset VkPipelineRasterizationStateCreateInfo, cullMode}

instance Offset "frontFace" VkPipelineRasterizationStateCreateInfo where
  rawOffset = #{offset VkPipelineRasterizationStateCreateInfo, frontFace}

instance Offset "depthBiasEnable" VkPipelineRasterizationStateCreateInfo where
  rawOffset = #{offset VkPipelineRasterizationStateCreateInfo, depthBiasEnable}

instance Offset "depthBiasConstantFactor" VkPipelineRasterizationStateCreateInfo where
  rawOffset = #{offset VkPipelineRasterizationStateCreateInfo, depthBiasConstantFactor}

instance Offset "depthBiasClamp" VkPipelineRasterizationStateCreateInfo where
  rawOffset = #{offset VkPipelineRasterizationStateCreateInfo, depthBiasClamp}

instance Offset "depthBiasSlopeFactor" VkPipelineRasterizationStateCreateInfo where
  rawOffset = #{offset VkPipelineRasterizationStateCreateInfo, depthBiasSlopeFactor}

instance Offset "lineWidth" VkPipelineRasterizationStateCreateInfo where
  rawOffset = #{offset VkPipelineRasterizationStateCreateInfo, lineWidth}