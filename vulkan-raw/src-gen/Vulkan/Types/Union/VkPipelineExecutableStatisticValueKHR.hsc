{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_KHR_pipeline_executable_properties

module Vulkan.Types.Union.VkPipelineExecutableStatisticValueKHR where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base



data {-# CTYPE "vulkan/vulkan.h" "VkPipelineExecutableStatisticValueKHR" #-} VkPipelineExecutableStatisticValueKHR =
       VkPipelineExecutableStatisticValueKHR
         { b32 :: VkBool32
         , i64 :: #{type int64_t}
         , u64 :: #{type uint64_t}
         , f64 :: #{type double}
         }

instance Storable VkPipelineExecutableStatisticValueKHR where
  sizeOf    _ = #{size      union VkPipelineExecutableStatisticValueKHR}
  alignment _ = #{alignment union VkPipelineExecutableStatisticValueKHR}

  peek ptr = 
    VkPipelineExecutableStatisticValueKHR
       <$> peek (offset @"b32" ptr)
       <*> peek (offset @"i64" ptr)
       <*> peek (offset @"u64" ptr)
       <*> peek (offset @"f64" ptr)

  poke ptr val = do
    pokeField @"b32" ptr val
    pokeField @"i64" ptr val
    pokeField @"u64" ptr val
    pokeField @"f64" ptr val

instance Offset "b32" VkPipelineExecutableStatisticValueKHR where
  rawOffset = #{offset union VkPipelineExecutableStatisticValueKHR, b32}

instance Offset "i64" VkPipelineExecutableStatisticValueKHR where
  rawOffset = #{offset union VkPipelineExecutableStatisticValueKHR, i64}

instance Offset "u64" VkPipelineExecutableStatisticValueKHR where
  rawOffset = #{offset union VkPipelineExecutableStatisticValueKHR, u64}

instance Offset "f64" VkPipelineExecutableStatisticValueKHR where
  rawOffset = #{offset union VkPipelineExecutableStatisticValueKHR, f64}

#else

module Vulkan.Types.Union.VkPipelineExecutableStatisticValueKHR where

#endif