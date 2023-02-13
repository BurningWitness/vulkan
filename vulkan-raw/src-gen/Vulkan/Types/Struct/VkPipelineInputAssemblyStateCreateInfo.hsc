{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Struct.VkPipelineInputAssemblyStateCreateInfo where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkPipelineInputAssemblyStateCreateFlags
import Vulkan.Types.Enum.VkPrimitiveTopology
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPipelineInputAssemblyStateCreateInfo" #-} VkPipelineInputAssemblyStateCreateInfo =
       VkPipelineInputAssemblyStateCreateInfo
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , flags :: VkPipelineInputAssemblyStateCreateFlags
         , topology :: VkPrimitiveTopology
         , primitiveRestartEnable :: VkBool32
         }

instance Storable VkPipelineInputAssemblyStateCreateInfo where
  sizeOf    _ = #{size      VkPipelineInputAssemblyStateCreateInfo}
  alignment _ = #{alignment VkPipelineInputAssemblyStateCreateInfo}

  peek ptr = 
    VkPipelineInputAssemblyStateCreateInfo
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"flags" ptr)
       <*> peek (offset @"topology" ptr)
       <*> peek (offset @"primitiveRestartEnable" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"flags" ptr val
    pokeField @"topology" ptr val
    pokeField @"primitiveRestartEnable" ptr val

instance Offset "sType" VkPipelineInputAssemblyStateCreateInfo where
  rawOffset = #{offset VkPipelineInputAssemblyStateCreateInfo, sType}

instance Offset "pNext" VkPipelineInputAssemblyStateCreateInfo where
  rawOffset = #{offset VkPipelineInputAssemblyStateCreateInfo, pNext}

instance Offset "flags" VkPipelineInputAssemblyStateCreateInfo where
  rawOffset = #{offset VkPipelineInputAssemblyStateCreateInfo, flags}

instance Offset "topology" VkPipelineInputAssemblyStateCreateInfo where
  rawOffset = #{offset VkPipelineInputAssemblyStateCreateInfo, topology}

instance Offset "primitiveRestartEnable" VkPipelineInputAssemblyStateCreateInfo where
  rawOffset = #{offset VkPipelineInputAssemblyStateCreateInfo, primitiveRestartEnable}