{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Struct.VkPipelineLayoutCreateInfo where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkPipelineLayoutCreateFlags
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkPushConstantRange



data {-# CTYPE "vulkan/vulkan.h" "VkPipelineLayoutCreateInfo" #-} VkPipelineLayoutCreateInfo =
       VkPipelineLayoutCreateInfo
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , flags :: VkPipelineLayoutCreateFlags
         , setLayoutCount :: #{type uint32_t} -- ^ Number of descriptor sets interfaced by the pipeline
         , pSetLayouts :: Ptr VkDescriptorSetLayout -- ^ Array of setCount number of descriptor set layout objects defining the layout of the
         , pushConstantRangeCount :: #{type uint32_t} -- ^ Number of push-constant ranges used by the pipeline
         , pPushConstantRanges :: Ptr VkPushConstantRange -- ^ Array of pushConstantRangeCount number of ranges used by various shader stages
         }

instance Storable VkPipelineLayoutCreateInfo where
  sizeOf    _ = #{size      VkPipelineLayoutCreateInfo}
  alignment _ = #{alignment VkPipelineLayoutCreateInfo}

  peek ptr = 
    VkPipelineLayoutCreateInfo
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"flags" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"setLayoutCount" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pSetLayouts" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pushConstantRangeCount" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pPushConstantRanges" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"flags" ptr val
    pokeField @"setLayoutCount" ptr val
    pokeField @"pSetLayouts" ptr val
    pokeField @"pushConstantRangeCount" ptr val
    pokeField @"pPushConstantRanges" ptr val

instance Offset "sType" VkPipelineLayoutCreateInfo where
  rawOffset = #{offset VkPipelineLayoutCreateInfo, sType}

instance Offset "pNext" VkPipelineLayoutCreateInfo where
  rawOffset = #{offset VkPipelineLayoutCreateInfo, pNext}

instance Offset "flags" VkPipelineLayoutCreateInfo where
  rawOffset = #{offset VkPipelineLayoutCreateInfo, flags}

instance Offset "setLayoutCount" VkPipelineLayoutCreateInfo where
  rawOffset = #{offset VkPipelineLayoutCreateInfo, setLayoutCount}

instance Offset "pSetLayouts" VkPipelineLayoutCreateInfo where
  rawOffset = #{offset VkPipelineLayoutCreateInfo, pSetLayouts}

instance Offset "pushConstantRangeCount" VkPipelineLayoutCreateInfo where
  rawOffset = #{offset VkPipelineLayoutCreateInfo, pushConstantRangeCount}

instance Offset "pPushConstantRanges" VkPipelineLayoutCreateInfo where
  rawOffset = #{offset VkPipelineLayoutCreateInfo, pPushConstantRanges}