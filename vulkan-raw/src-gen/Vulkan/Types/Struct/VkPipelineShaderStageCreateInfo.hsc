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
  sizeOf    _ = #{size      VkPipelineShaderStageCreateInfo}
  alignment _ = #{alignment VkPipelineShaderStageCreateInfo}

  peek ptr = 
    VkPipelineShaderStageCreateInfo
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"flags" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"stage" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"module" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pName" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pSpecializationInfo" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"flags" ptr val
    pokeField @"stage" ptr val
    pokeField @"module" ptr val
    pokeField @"pName" ptr val
    pokeField @"pSpecializationInfo" ptr val

instance Offset "sType" VkPipelineShaderStageCreateInfo where
  rawOffset = #{offset VkPipelineShaderStageCreateInfo, sType}

instance Offset "pNext" VkPipelineShaderStageCreateInfo where
  rawOffset = #{offset VkPipelineShaderStageCreateInfo, pNext}

instance Offset "flags" VkPipelineShaderStageCreateInfo where
  rawOffset = #{offset VkPipelineShaderStageCreateInfo, flags}

instance Offset "stage" VkPipelineShaderStageCreateInfo where
  rawOffset = #{offset VkPipelineShaderStageCreateInfo, stage}

instance Offset "module_" VkPipelineShaderStageCreateInfo where
  rawOffset = #{offset VkPipelineShaderStageCreateInfo, module}

instance Offset "pName" VkPipelineShaderStageCreateInfo where
  rawOffset = #{offset VkPipelineShaderStageCreateInfo, pName}

instance Offset "pSpecializationInfo" VkPipelineShaderStageCreateInfo where
  rawOffset = #{offset VkPipelineShaderStageCreateInfo, pSpecializationInfo}

instance Offset "module" VkPipelineShaderStageCreateInfo where
  rawOffset = rawOffset @"module_" @VkPipelineShaderStageCreateInfo

instance HasField "module" VkPipelineShaderStageCreateInfo VkShaderModule where
  getField = getField @"module_" @VkPipelineShaderStageCreateInfo