{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_KHR_pipeline_executable_properties

module Vulkan.Types.Struct.VkPipelineExecutableStatisticKHR where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkPipelineExecutableStatisticFormatKHR
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Union.VkPipelineExecutableStatisticValueKHR



data {-# CTYPE "vulkan/vulkan.h" "VkPipelineExecutableStatisticKHR" #-} VkPipelineExecutableStatisticKHR =
       VkPipelineExecutableStatisticKHR
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , name :: #{type char}
         , description :: #{type char}
         , format :: VkPipelineExecutableStatisticFormatKHR
         , value :: VkPipelineExecutableStatisticValueKHR
         }

instance Storable VkPipelineExecutableStatisticKHR where
  sizeOf    _ = #{size      VkPipelineExecutableStatisticKHR}
  alignment _ = #{alignment VkPipelineExecutableStatisticKHR}

  peek ptr = 
    VkPipelineExecutableStatisticKHR
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"name" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"description" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"format" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"value" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"name" ptr val
    pokeField @"description" ptr val
    pokeField @"format" ptr val
    pokeField @"value" ptr val

instance Offset "sType" VkPipelineExecutableStatisticKHR where
  rawOffset = #{offset VkPipelineExecutableStatisticKHR, sType}

instance Offset "pNext" VkPipelineExecutableStatisticKHR where
  rawOffset = #{offset VkPipelineExecutableStatisticKHR, pNext}

instance Offset "name" VkPipelineExecutableStatisticKHR where
  rawOffset = #{offset VkPipelineExecutableStatisticKHR, name}

instance Offset "description" VkPipelineExecutableStatisticKHR where
  rawOffset = #{offset VkPipelineExecutableStatisticKHR, description}

instance Offset "format" VkPipelineExecutableStatisticKHR where
  rawOffset = #{offset VkPipelineExecutableStatisticKHR, format}

instance Offset "value" VkPipelineExecutableStatisticKHR where
  rawOffset = #{offset VkPipelineExecutableStatisticKHR, value}

#else

module Vulkan.Types.Struct.VkPipelineExecutableStatisticKHR where

#endif