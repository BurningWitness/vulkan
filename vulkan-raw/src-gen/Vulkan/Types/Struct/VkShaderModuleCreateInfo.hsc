{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Struct.VkShaderModuleCreateInfo where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkShaderModuleCreateFlags
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkShaderModuleCreateInfo" #-} VkShaderModuleCreateInfo =
       VkShaderModuleCreateInfo
         { sType :: VkStructureType
         , pNext :: Ptr () -- ^ noautovalidity because this structure can be either an explicit parameter, or passed in a pNext chain
         , flags :: VkShaderModuleCreateFlags
         , codeSize :: #{type size_t} -- ^ Specified in bytes
         , pCode :: Ptr #{type uint32_t} -- ^ Binary code of size codeSize
         }

instance Storable VkShaderModuleCreateInfo where
  sizeOf    _ = #{size      struct VkShaderModuleCreateInfo}
  alignment _ = #{alignment struct VkShaderModuleCreateInfo}

  peek ptr = 
    VkShaderModuleCreateInfo
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"flags" ptr)
       <*> peek (offset @"codeSize" ptr)
       <*> peek (offset @"pCode" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"flags" ptr val
    pokeField @"codeSize" ptr val
    pokeField @"pCode" ptr val

instance Offset "sType" VkShaderModuleCreateInfo where
  rawOffset = #{offset struct VkShaderModuleCreateInfo, sType}

instance Offset "pNext" VkShaderModuleCreateInfo where
  rawOffset = #{offset struct VkShaderModuleCreateInfo, pNext}

instance Offset "flags" VkShaderModuleCreateInfo where
  rawOffset = #{offset struct VkShaderModuleCreateInfo, flags}

instance Offset "codeSize" VkShaderModuleCreateInfo where
  rawOffset = #{offset struct VkShaderModuleCreateInfo, codeSize}

instance Offset "pCode" VkShaderModuleCreateInfo where
  rawOffset = #{offset struct VkShaderModuleCreateInfo, pCode}