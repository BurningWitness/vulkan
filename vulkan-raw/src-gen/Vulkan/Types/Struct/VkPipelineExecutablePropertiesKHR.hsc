{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_KHR_pipeline_executable_properties

module Vulkan.Types.Struct.VkPipelineExecutablePropertiesKHR where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkShaderStageFlags
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPipelineExecutablePropertiesKHR" #-} VkPipelineExecutablePropertiesKHR =
       VkPipelineExecutablePropertiesKHR
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , stages :: VkShaderStageFlags
         , name :: #{type char}
         , description :: #{type char}
         , subgroupSize :: #{type uint32_t}
         }

instance Storable VkPipelineExecutablePropertiesKHR where
  sizeOf    _ = #{size      struct VkPipelineExecutablePropertiesKHR}
  alignment _ = #{alignment struct VkPipelineExecutablePropertiesKHR}

  peek ptr = 
    VkPipelineExecutablePropertiesKHR
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"stages" ptr)
       <*> peek (offset @"name" ptr)
       <*> peek (offset @"description" ptr)
       <*> peek (offset @"subgroupSize" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"stages" ptr val
    pokeField @"name" ptr val
    pokeField @"description" ptr val
    pokeField @"subgroupSize" ptr val

instance Offset "sType" VkPipelineExecutablePropertiesKHR where
  rawOffset = #{offset struct VkPipelineExecutablePropertiesKHR, sType}

instance Offset "pNext" VkPipelineExecutablePropertiesKHR where
  rawOffset = #{offset struct VkPipelineExecutablePropertiesKHR, pNext}

instance Offset "stages" VkPipelineExecutablePropertiesKHR where
  rawOffset = #{offset struct VkPipelineExecutablePropertiesKHR, stages}

instance Offset "name" VkPipelineExecutablePropertiesKHR where
  rawOffset = #{offset struct VkPipelineExecutablePropertiesKHR, name}

instance Offset "description" VkPipelineExecutablePropertiesKHR where
  rawOffset = #{offset struct VkPipelineExecutablePropertiesKHR, description}

instance Offset "subgroupSize" VkPipelineExecutablePropertiesKHR where
  rawOffset = #{offset struct VkPipelineExecutablePropertiesKHR, subgroupSize}

#else

module Vulkan.Types.Struct.VkPipelineExecutablePropertiesKHR where

#endif