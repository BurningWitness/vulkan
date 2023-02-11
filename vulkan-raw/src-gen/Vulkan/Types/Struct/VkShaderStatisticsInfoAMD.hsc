{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_AMD_shader_info

module Vulkan.Types.Struct.VkShaderStatisticsInfoAMD where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkShaderStageFlags
import Vulkan.Types.Struct.VkShaderResourceUsageAMD



data {-# CTYPE "vulkan/vulkan.h" "VkShaderStatisticsInfoAMD" #-} VkShaderStatisticsInfoAMD =
       VkShaderStatisticsInfoAMD
         { shaderStageMask :: VkShaderStageFlags
         , resourceUsage :: VkShaderResourceUsageAMD
         , numPhysicalVgprs :: #{type uint32_t}
         , numPhysicalSgprs :: #{type uint32_t}
         , numAvailableVgprs :: #{type uint32_t}
         , numAvailableSgprs :: #{type uint32_t}
         , computeWorkGroupSize :: #{type uint32_t}
         }

instance Storable VkShaderStatisticsInfoAMD where
  sizeOf    _ = #{size      struct VkShaderStatisticsInfoAMD}
  alignment _ = #{alignment struct VkShaderStatisticsInfoAMD}

  peek ptr = 
    VkShaderStatisticsInfoAMD
       <$> peek (offset @"shaderStageMask" ptr)
       <*> peek (offset @"resourceUsage" ptr)
       <*> peek (offset @"numPhysicalVgprs" ptr)
       <*> peek (offset @"numPhysicalSgprs" ptr)
       <*> peek (offset @"numAvailableVgprs" ptr)
       <*> peek (offset @"numAvailableSgprs" ptr)
       <*> peek (offset @"computeWorkGroupSize" ptr)

  poke ptr val = do
    pokeField @"shaderStageMask" ptr val
    pokeField @"resourceUsage" ptr val
    pokeField @"numPhysicalVgprs" ptr val
    pokeField @"numPhysicalSgprs" ptr val
    pokeField @"numAvailableVgprs" ptr val
    pokeField @"numAvailableSgprs" ptr val
    pokeField @"computeWorkGroupSize" ptr val

instance Offset "shaderStageMask" VkShaderStatisticsInfoAMD where
  rawOffset = #{offset struct VkShaderStatisticsInfoAMD, shaderStageMask}

instance Offset "resourceUsage" VkShaderStatisticsInfoAMD where
  rawOffset = #{offset struct VkShaderStatisticsInfoAMD, resourceUsage}

instance Offset "numPhysicalVgprs" VkShaderStatisticsInfoAMD where
  rawOffset = #{offset struct VkShaderStatisticsInfoAMD, numPhysicalVgprs}

instance Offset "numPhysicalSgprs" VkShaderStatisticsInfoAMD where
  rawOffset = #{offset struct VkShaderStatisticsInfoAMD, numPhysicalSgprs}

instance Offset "numAvailableVgprs" VkShaderStatisticsInfoAMD where
  rawOffset = #{offset struct VkShaderStatisticsInfoAMD, numAvailableVgprs}

instance Offset "numAvailableSgprs" VkShaderStatisticsInfoAMD where
  rawOffset = #{offset struct VkShaderStatisticsInfoAMD, numAvailableSgprs}

instance Offset "computeWorkGroupSize" VkShaderStatisticsInfoAMD where
  rawOffset = #{offset struct VkShaderStatisticsInfoAMD, computeWorkGroupSize}

#else

module Vulkan.Types.Struct.VkShaderStatisticsInfoAMD where

#endif