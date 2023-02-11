{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Struct.VkPipelineShaderStageCreateInfo where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import GHC.Records
import Vulkan.Types.Enum.VkPipelineShaderStageCreateFlags
import Vulkan.Types.Enum.VkShaderStageFlagBits
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkSpecializationInfo



data {-# CTYPE "vulkan/vulkan.h" "VkPipelineShaderStageCreateInfo" #-} VkPipelineShaderStageCreateInfo =
       VkPipelineShaderStageCreateInfo
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , flags :: VkPipelineShaderStageCreateFlags
         , stage :: VkShaderStageFlagBits -- ^ Shader stage
         , module_ :: VkShaderModule -- ^ Module containing entry point
         , pName :: Ptr #{type char} -- ^ Null-terminated entry point name
         , pSpecializationInfo :: Ptr VkSpecializationInfo
         }

instance Storable VkPipelineShaderStageCreateInfo where
  sizeOf    _ = #{size      struct VkPipelineShaderStageCreateInfo}
  alignment _ = #{alignment struct VkPipelineShaderStageCreateInfo}

  peek ptr = 
    VkPipelineShaderStageCreateInfo
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"flags" ptr)
       <*> peek (offset @"stage" ptr)
       <*> peek (offset @"module" ptr)
       <*> peek (offset @"pName" ptr)
       <*> peek (offset @"pSpecializationInfo" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"flags" ptr val
    pokeField @"stage" ptr val
    pokeField @"module" ptr val
    pokeField @"pName" ptr val
    pokeField @"pSpecializationInfo" ptr val

instance Offset "sType" VkPipelineShaderStageCreateInfo where
  rawOffset = #{offset struct VkPipelineShaderStageCreateInfo, sType}

instance Offset "pNext" VkPipelineShaderStageCreateInfo where
  rawOffset = #{offset struct VkPipelineShaderStageCreateInfo, pNext}

instance Offset "flags" VkPipelineShaderStageCreateInfo where
  rawOffset = #{offset struct VkPipelineShaderStageCreateInfo, flags}

instance Offset "stage" VkPipelineShaderStageCreateInfo where
  rawOffset = #{offset struct VkPipelineShaderStageCreateInfo, stage}

instance Offset "module_" VkPipelineShaderStageCreateInfo where
  rawOffset = #{offset struct VkPipelineShaderStageCreateInfo, module}

instance Offset "pName" VkPipelineShaderStageCreateInfo where
  rawOffset = #{offset struct VkPipelineShaderStageCreateInfo, pName}

instance Offset "pSpecializationInfo" VkPipelineShaderStageCreateInfo where
  rawOffset = #{offset struct VkPipelineShaderStageCreateInfo, pSpecializationInfo}

instance Offset "module" VkPipelineShaderStageCreateInfo where
  rawOffset = rawOffset @"module_" @VkPipelineShaderStageCreateInfo

instance HasField "module" VkPipelineShaderStageCreateInfo VkShaderModule where
  getField = getField @"module_" @VkPipelineShaderStageCreateInfo