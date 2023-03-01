{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ViewPatterns #-}

#include <vulkan/vulkan.h>

#if VK_QCOM_rotated_copy_commands

module Vulkan.Ext.VK_QCOM_rotated_copy_commands
  ( pattern VK_QCOM_ROTATED_COPY_COMMANDS_SPEC_VERSION
  , pattern VK_QCOM_ROTATED_COPY_COMMANDS_EXTENSION_NAME
  , pattern VK_STRUCTURE_TYPE_COPY_COMMAND_TRANSFORM_INFO_QCOM
  , VkCopyCommandTransformInfoQCOM (..)
  ) where

import Foreign.C.String
import GHC.Ptr
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkCopyCommandTransformInfoQCOM
import Vulkan.Types.VkFun



pattern VK_QCOM_ROTATED_COPY_COMMANDS_SPEC_VERSION :: (Eq a, Num a) => a
pattern VK_QCOM_ROTATED_COPY_COMMANDS_SPEC_VERSION = 1

pattern VK_QCOM_ROTATED_COPY_COMMANDS_EXTENSION_NAME :: CString
pattern VK_QCOM_ROTATED_COPY_COMMANDS_EXTENSION_NAME <- (const False -> True)
  where
    VK_QCOM_ROTATED_COPY_COMMANDS_EXTENSION_NAME = Ptr ("VK_QCOM_rotated_copy_commands\0"##)

#else

module Vulkan.Ext.VK_QCOM_rotated_copy_commands where

#endif